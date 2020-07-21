## Resource page for the Automatically Assessing Lexical Features in Learner Corpora Workshop

**_July 28th, 2020_**

**_Scott Crossley  
Professor  
Department of Applied Linguistics and ESL  
Georgia State University_**

**_Kristopher Kyle  
Assistant Professor  
Department of Linguistics  
University of Oregon_**

_This page includes important datasets and other related material for the Automatically Assessing Lexical Features in Learner Corpora Workshop at LAEL 2020._

### Learner Corpus
The learner corpus in this workshop is a sample of the written section of the <a href="http://language.sakura.ne.jp/icnale/" target="_blank">ICNALE corpus</a> (Ishikawa, 2013), which is a cross-sectional learner corpus with a substantial amount of participant metadata.

ICNALE includes writing samples from 500 L2 learners of English. During corpus collection, each participant wrote two argumentative essays (one in relation to smoking in restaurants and another in relation to whether university students should get part time jobs). Participants also took a [Vocabulary Size Test](https://www.lextutor.ca/tests/vst/index.php?mode=test) (VST; a passive vocabulary size test) and reported standardized language proficiency test scores (e.g., TOEFL, TOEIC, IELTS, etc.), which were converted to CEFR levels.

The sample compiled for this workshop (ICNALE 500) includes both writing samples for 500 participants (both essay responses from each participant are included in a single file) across a range of nationalities (these function as an imperfect proxy for L1). In the larger corpus, some participants failed to report a standardized test score, and the corpus compilers estimated their language proficiency using their VST score. However, in this sample, all proficiency scores are based on standardized test scores. Additionally, there are some character encoding issues in the original corpus that can cause problems with some text analysis programs. These issues have been remedied in the ICNALE 500.

[Click here to download the ICNALE 500 corpus](https://github.com/kristopherkyle/lael/blob/master/data/ICNALE_500_merged_clean.zip?raw=true) (This also includes a subset of the metadata).

### Linguistic Complexity Indices

All linguistic complexity indices were computed by one of two tools that are freely available on [www.linguisticanalysistools.org](https://www.linguisticanalysistools.org), namely [TAALES](https://www.linguisticanalysistools.org/taales.html), and [TAALED](https://www.linguisticanalysistools.org/taaled.html). Full descriptions of these tools can be found in the documents on their related pages and in a few [published papers](http://www.kristopherkyle.com/publicationsgrants.html). A small (but useful!) sample of these indices are briefly described below.

To download a spreadsheet that includes the ICNALE 500 metadata and sores for each of the indices, [click here](https://github.com/kristopherkyle/lael/blob/master/data/ICNALE_500_Analyzed.csv.zip?raw=true)

To download a very simple R script with the sample analysis, [click here](https://raw.githubusercontent.com/kristopherkyle/lael/master/data/Freq_analysis.r)

#### Measuring Lexical Sophistication ([TAALES](https://www.linguisticanalysistools.org/taales.html))
The Tool for the Automatic Analysis of Lexical Sophistication (TAALES) measures over 400 indices related to lexical sophistication (i.e., the relative difficulty of learning and/or using a particular word, see also the related definition of Read (2000)). It is our stance that lexical sophistication is a multifaceted construct and should be measured as such (see, e.g., Eguchi & Kyle, under review; Kim, Crossley, & Kyle, 2018, Kyle & Crossley, 2015; Kyle, Crossley, & Berger, 2018, inter alia). Below are brief descriptions of indices that represent a few of these facets.

##### Frequency
Reference corpus frequency is a time-tested method of measuring how sophisticated a word is (see Laufer, 1994; Laufer & Nation, 1995, inter alia). Of course, the corpus from whence frequency figures are derived will likely have an important impact on how well they measure sophistication in a particular language use domain.

Today, we will look at indices that consider content words (nouns, verbs, adjectives, and most adverbs) from a corpus of sitcom and movie subtitles (SUBTLEXus; Brysbaert & New, 2009), which is represented by the index **_SUBTLEXus_Freq_Log_CW_**, and from the magazine section of the Corpus of Contemporary American English (COCA; Davies, 2010), which is represented by the index **_COCA_magazine_lemma_frequency_Log_CW_**. Each index is calculated using logarithmically transformed frequency figures, which helps account for the Zipfian distribution of frequency data. We would expect that on average, more proficient learners will use lower frequency words (i.e., there will be a negative relationship between proficiency and frequency score).

Also related to frequency is the use of academic language. The TAALES index **_All_AWL_Normed_** represents the proportion of academic words in a text (number of academic words/number of total words multiplied by 100). In this case, academic words are defined as the words in Coxhead's (2000) Academic Word List. We would expect that more proficient learners will use a higher proportion of academic words (though this is highly genre-dependent)

##### Concreteness
Concreteness refers to the degree to which a word represents a perceptible entity (a nice, but imperfect antonym for concretness is abstractness). Words such as _apple_ are more concrete, while words such as _ephemeral_ are much less concrete. We would expect that it is easier to make form-meaning mappings with words that are more salient (concreteness can be considered one index of salience, see Crossley, Kyle, & Salsbury, 2016). We would therefore expect that more proficient learners would on average use less concrete lexical items (but this is also dependent on genre/task, see Eguchi & Kyle, under review). The index **_Brysbaert_Concreteness_Combined_CW_TAALES_** represents the average concreteness score for content words, based on the crowd-sourced norms for 40,000 words collected by Brysbaert, Warriner, & Kuperman (2014).

##### Lexical decision times
A related way to look at lexical sophistication is to consider listeners' perceptions of sophistication, which is likely related to the definition provided above, but is not precisely the same. One way to measure this type of sophistication is to use lexical decision times that are average across a large number of proficient language users. These are calculated by determining the amount of time it takes a participant to decide whether a word is from the target language (e.g., English) or not. Words with short latencies (such as _cat_) can be accessed quickly, while words with longer latencies (such as _indefiniteness_) cannot be accessed as quickly and can be perceived as being more sophisticated. We would expect that more proficient learners would on average use words that have longer latencies. The index **_LD_Mean_RT_CW_** is based on the norms reported in Balota et al., (2007).

[Click here](https://github.com/kristopherkyle/lael/blob/master/data/TAALES_Diagnostic.zip?raw=true) to download a version of the ICNALE 500 corpus that includes index scores for each word in each text.

#### Measuring Lexical Diversity ([TAALED](https://www.linguisticanalysistools.org/taaled.html))
Lexical diversity refers to the amount of lexical variation in a text. The working hypothesis is that language users with a larger vocabulary will produce texts with more diverse lexical items (given a particular task.  Accordingly, we would expect more proficient language users to produce more lexically diverse texts.

The simplest index of lexical diversity is the type-token ratio (TTR), which is calculated as the number of types (unique words) in a text divided by the number of tokens (running words) in a text. One important issue with the type-token ratio (and other related indices such as Guiraud's index) is that it is inherently related to text length. Longer texts will earn lower diversity scores than shorter texts. Because of this issue, in order to compare diversity scores in a set of texts, the length of the text must be held constant (which means losing data) OR a text-independent measure must be used.

There are at least three indices of lexical diversity that are reasonably independent of text length (see McCarthy & Jarvis, 2007, 2010; Zenker & Kyle, 2019, under review), including **_vocD/HD-D_** (Malvern & Richards, 2002; McCarthy & Jarvis, 2007), **_MTLD_** (McCarthy & Jarvis, 2010), and **_MATTR_** (Covington & McFall, 2010).

In this workshop, we will work with moving average type-token ratio (MATTR). MATTR is calculated by calculating TTR using a moving windows approach. We will be using **_mattr50_aw_** (all words) and **_mattr50_cw_** (content words), which use a 50-word window. TTR is calculated for words 1-50, 2-51, 3-52, etc. until the end of the text is reached. MATTR is calculated by averaging the TTR scores for all windows. For both indices, part of speech specific lemmas are used.

[Click here](https://github.com/kristopherkyle/lael/blob/master/data/TAALED_results_diagnostic.zip?raw=true) to download a version of the ICNALE 500 corpus that includes lemmatized type and token lists for each text.
