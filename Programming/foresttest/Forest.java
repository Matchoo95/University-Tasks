import java.util.ArrayList;

/**
 * A class to represent a forest of trees
 * 
 * @author Robert Topp
 * @version 2013.01.31
 */
public class Forest
{
    // Storage for an arbitrary number of trees.
    private ArrayList<Tree> bigwood;

    /**
     * Perform any initialization that is required for the
     * tree list
     */
    public Forest()
    {
        bigwood = new ArrayList<Tree>();
        storeTree(new Tree("Ash", 10, 10.6, false));
        storeTree(new Tree("Beech", 20, 8.5, false));
        storeTree(new Tree("Cedar", 30, 11.3,true));
        storeTree(new Tree("Date", 40, 13.8, false));
        storeTree(new Tree("Eucalyptus", 50, 6.9, true));
        storeTree(new Tree("Fir", 60, 7.4, true));
        storeTree(new Tree("Golden larch", 70, 15.2, false));
    }

    /**
     * Store a new tree into the tree list.
     * @param a_tree The tree to be stored.
     */
    public void storeTree(Tree a_tree)
    {
        bigwood.add(a_tree);
    }

    /**
     * @return The number of trees currently in the list.
     */
    public int numberOfTrees()
    {
        return bigwood.size();
    }
    
    /**
     * Remove a tree from the tree list.
     * @param pos the index of the tree to remove
     */
    public void killTree(int pos)
    {
        bigwood.remove(pos);
    }
    
    /**
     * Output the heights of all trees in the list.
     */
    public void listTreeHeights()
    {
        // ********INSERT CODE HERE *********** 3 MARKS
        for (Tree a_tree : bigwood)
        {
            System.out.println(a_tree.getHeight());
        }
    
    }
    
    /**
    /**
     * Return true if all trees in the forest are evergreen
     * false otherwise
     * 
     */
    public boolean allEvergreen()
    {
        // ********INSERT CODE HERE *********** 3 MARKS
        boolean decision = false;
        for (Tree a_tree : bigwood)
        {
            if(a_tree.getEvergreen() == false)
            {
                decision = false;
            }        
        }
        return decision;
    }
}
