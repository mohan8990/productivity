void split(vector<string> &toPopulate, string s, string delim)
{
    // Will hold the start of the substring (after the delim). Initially the 
    // substring will start at 0.
    unsigned int substrStart = 0;
    while (substrStart < s.length())
    {
        // Will hold the position of the delim.
        int curFoundPos = s.find(delim, substrStart);
        // Holds the current substring.
        string oneOfSplittedStr;

        // The delim not found. So, take the substring from previous delim to end.
        if (curFoundPos == -1)
        {
            oneOfSplittedStr = 
                s.substr(substrStart, s.length() - substrStart);
            // To break off the loop. If not for this stmt, we will go into infinite loop.
            substrStart = s.   length();
        }
        else
        {
            oneOfSplittedStr = 
                s.substr(substrStart, curFoundPos - substrStart);
            // our next substring will start one greater than the current found position.
            substrStart = curFoundPos + 1;
        }
        // Empty - Nah
        if (!oneOfSplittedStr.empty() && oneOfSplittedStr.compare("") != 0)
            toPopulate.push_back(oneOfSplittedStr);
    }
}

void combine(stringstream &toRet, set<string> strSet, string combineChar)
{
    set<string>::iterator it = strSet.begin();
    set<string>::iterator end = strSet.end();
    for (; it != end; it++)
    {
        // Empty string - don't push.
        if (!(*it).empty())
            toRet << *it << combineChar;
    }
}

bool isFileExists(string fileName)
{
    if (FILE *file = fopen(fileName.c_str(), "r")) 
    {
        fclose(file);
        return true;
    }
    return false;
}
