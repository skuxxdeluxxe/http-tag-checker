# http-tag-checker

The HTTP tag checker makes sure tags are properly opened and closed in a given sentence

## How to use

1. Run the script
    ```
    $ ./checker.rb
    ```
2. Enter a sentence with tags after the prompt
    ````
    Enter the string
    <B>This <\g>is <B>boldface</B> in <<*> a</B> <\6> <<d>sentence
    ````
3. Code will output if tags have been missed or if the sentence is correctly tagged
    ```
    Correctly tagged paragraph
    #OR
    Expected </C> found </B>
    Expected # found </C>
    Expected </B> found #  
    ``` 
