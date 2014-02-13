#include <stdio.h>
#include <mpi.h>

int main(int argc, char *argv[]) {
    int rank, size;
    int sbuff, rbuff;
    MPI_Status status;

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    if(!rank) {

    }
    else if (rank == 1) {

    }
    else if (rank == 2) {

    }
    
    MPI_Finalize();
    return 0;
}

