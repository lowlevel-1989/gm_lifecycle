///REF: https://www.reddit.com/r/gamemaker/comments/7e2tl8/c_stringformatish_script/
///@param str
///@param {0}
///@param {1}
///@param ...
var str = argument[0];
for(var i = 1; i < argument_count; ++i)
{
    var stringToReplace = "{" + string(i - 1) + "}";
    if(string_pos(stringToReplace, str) == 0)
    {
        show_error("Cannot interpret string, missing " + stringToReplace, false);
        return -1;
    }
    while(string_pos(stringToReplace, str) != 0)
    {
        str = string_replace(str, stringToReplace, argument[i]);
    }
}
return str;
