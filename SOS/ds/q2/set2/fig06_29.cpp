    /**
     * Inserts x; duplicates allowed.
     */
    void insert( const Comparable & x )
    {
        root = merge( new LeftistNode( x ), root ); 
    }
