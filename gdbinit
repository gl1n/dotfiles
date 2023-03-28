# To skip all standard libraries
skip -gfi /usr/include/c++/*/*/*
skip -gfi /usr/include/c++/*/*
skip -gfi /usr/include/c++/*

# To skip specific header file
# skip file path/to/some/header_file

# To list all the files marked for skipping
info skip

define pll
    set $current = $arg0
    set $count = $arg1

    set $i = 0
    while ($current != 0 && ($count == -1 || $i < $count))
        printf "[%d] ", $i
        print *$current
        set $current = (typeof($current)) $current->next
        set $i = $i + 1
    end
end

define pbt
    set $node = $arg0
    if $node == 0
        printf "nullptr\n"
    else
        printf "val: %ld,  left: %ld,  right: %ld\n", $node->val, $node->left, $node->right
    end
end

