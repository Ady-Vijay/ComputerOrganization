int add (unsigned int A[], unsigned int B[], unsigned int C[]) {
        int     carry;
        unsigned int c;

        carry = 0;
        c = A[0] + B[0] + carry;
        carry = (A[0] > c) || (B[0] > c);
        C[0] = c;
        c = A[1] + B[1] + carry;
        carry = (A[1] > c) || (B[1] > c);
        C[1] = c;
        c = A[2] + B[2] + carry;
        carry = (A[2] > c) || (B[2] > c);
        C[2] = c;
        c = A[3] + B[3] + carry;
        carry = (A[3] > c) || (B[3] > c);
        C[3] = c;
        c = A[4] + B[4] + carry;
        carry = (A[4] > c) || (B[4] > c);
        C[4] = c;
        c = A[5] + B[5] + carry;
        carry = (A[5] > c) || (B[5] > c);
        C[5] = c;
        c = A[6] + B[6] + carry;
        carry = (A[6] > c) || (B[6] > c);
        C[6] = c;
        c = A[7] + B[7] + carry;
        carry = (A[7] > c) || (B[7] > c);
        C[7] = c;
        c = A[8] + B[8] + carry;
        carry = (A[8] > c) || (B[8] > c);
        C[8] = c;
        c = A[9] + B[9] + carry;
        carry = (A[9] > c) || (B[9] > c);
        C[9] = c;
        return carry;
}