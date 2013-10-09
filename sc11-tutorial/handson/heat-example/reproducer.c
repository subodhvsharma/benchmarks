#include <mpi.h>

int main (int argc, char** argv)
{
	MPI_Request request;
	MPI_Status status;
	MPI_Datatype type;
	int rank;
	int d[100];
	
	MPI_Init (&argc, &argv);
	MPI_Comm_rank (MPI_COMM_WORLD, &rank);

	MPI_Type_vector (
					 10, /* #blocks */
					 1, /* #elements per block */
					 10, /* #stride */
					 MPI_INT, /* old type */
					 &type /* new type */ );
    MPI_Type_commit (&type);
	
	
	if (rank == 0)
		MPI_Send (d, 1, type, 1, 123, MPI_COMM_WORLD);

	if (rank == 1)
		MPI_Recv (d, 1, type, 0, 123, MPI_COMM_WORLD, &status);

	MPI_Type_free (&type);
	MPI_Finalize ();

	
    return 0;
}

/*EOF*/
