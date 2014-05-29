#pragma once

#include <sstream>
#include <set>
#include <vector>

using namespace std;

/**
 * Combines the given string using the <code> combineChar </code>
 * 
 * @param toRet       The storage where the combined characters should go. This is the
 *                    return value for the function.
 * @param strSet      The set of strings we want to combine.
 * @param combineChar The character using which we want to combine.
 */
void combine(stringstream &toRet, set<string> strSet, string combineChar);

/**
 * Equivalent to java's string.split() function.
 * 
 * @param toPopulate The return value of this function.
 * @param str        The string we want to split.
 * @param delim      The delim which we want to split. This will not be included in
 *                   the splitted string. TODO: Support string splitting. As of now,
 *                   it supports only one character.
 */
void split(vector<string> &toPopulate, string str, string delim);

/** 
 * Check if the file with the given name exists.
 *
 * @param fileName The name of the file along with absolute path.
 *
 * @return true if the file with the given name exists.
 */
bool isFileExists(string fileName);
