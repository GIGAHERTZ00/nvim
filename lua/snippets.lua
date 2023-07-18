local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets(nil, {

  -- Dlang --

  d = {
    snip({
        trig = "dabc",
      },{
        text({
          "import std;",
          "void scan(T...)(ref T args){auto a=readln.chomp.split;foreach(i,t;T)args[i]=a[i].to!t;}",
          "T[] readarr(T=long)(){return readln.chomp.split.to!(T[]);}",
          "void printa(T)(T[] a) {writefln(\"%(%s %)\",a);}",
          "",
          "void main(){",
          "  ",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "daoj",
      },{
        text({
          "import std.stdio,std.string,std.functional,std.conv,std.algorithm,std.range,std.traits,std.math,std.container,std.bigint,std.numeric,std.conv,std.typecons,std.uni,std.ascii,std.bitmanip,core.bitop;",
          "void scan(T...)(ref T args){auto a=readln.chomp.split;foreach(i,t;T)args[i]=a[i].to!t;}",
          "T[] readarr(T=long)(){return readln.chomp.split.to!(T[]);}",
          "auto printa(T)(T[] a) {writefln(\"%(%s %)\",a);}",
          "",
          "void main(){",
          "  ",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "dbs",
      },{
        text({
          "auto BS(T)(T[] arr,T key){",
          "  T left,right;  right = arr.length;",
          "  while(left < right){",
          "    T mid = (left+right)/2;",
          "    if(arr[mid] == key){",
          "      return mid;",
          "    }else if(arr[mid] < key){",
          "      left = mid + 1;",
          "    }else{",
          "      right = mid;",
          "    }",
          "  }return -1;",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "ddfs",
      },{
        text({
          "void DFS(T)(T[][] G,T now, T goal, bool[] flg){",
          "  flg[now] = true;",
          "  if(flg[goal]){",
          "    return;",
          "  }foreach(i; G[now]){",
          "    if(!flg[i]){",
          "      G.DFS(i, goal, flg);",
          "    }",
          "  }",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "dls",
      },{
        text({
          "auto LS(T)(T[] arr,T key){",
          "  foreach(i,e; arr){",
          "    if(e == key){",
          "      return i;",
          "    }",
          "  }return -1;",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "${1}",
      },{
        text({
          "${2}",
        }),
        insert(0),
    }),snip({
        trig = "dpf",
      },{
        text({
          "auto pf(T)(T n){",
          "  T[][] res;",
          "  foreach(i; 2..(n^^0.5).to!T){",
          "    if(n % i == 0){",
          "      T ex;",
          "      while(n % i == 0){",
          "        n /= i;",
          "        ++ex;",
          "      }res ~= [i,ex];",
          "    }",
          "  }if(n != 1){",
          "    res ~= [n,1];",
          "  }return res;",
          "}",
        }),
        insert(0),
    }),snip({
        trig = "drbt",
      },{
        text({
          "auto rbt = new RedBlackTree!(long, `a < b`,false)();",
        }),
        insert(0),
    }),
  },

  -- lua --

  lua = {
    snip({
        trig = "snip",
      },{
        text({
          "snip({",
          "    trig = \"${1}\",",
          "  },{",
          "    text({",
          "      \"${2}\",",
          "    }),",
          "    insert(0),",
          "}),",
        }),
    }),
  },

  -- lualatex --
  tex = {
    snip({
        trig = "lualatex",
      },{
        text({
          "\\RequirePackage{plautopatch}",
          "",
          "\\documentclass[a4paper,ja=standard,jafont=ipaex,lualatex,titlepage]{bxjsarticle}",
          "",
          "\\usepackage{graphicx}",
          "\\usepackage{here}",
          "",
          "\\makeatletter",
          "\\def\\mojiparline#1{",
          "    \\newcounter{mpl}",
          "    \\setcounter{mpl}{#1}",
          "    \\@tempdima=\\linewidth",
          "    \\advance\\@tempdima by-\\value{mpl}zw",
          "    \\addtocounter{mpl}{-1}",
          "    \\divide\\@tempdima by \\value{mpl}",
          "    \\advance\\kanjiskip by\\@tempdima",
          "    \\advance\\parindent by\\@tempdima",
          "}",
          "\\makeatother",
          "\\def\\linesparpage#1{",
          "    \\baselineskip=\\textheight",
          "    \\divide\\baselineskip by #1",
          "}                                          % 一行あたりの文字数と一枚あたりの行数の設定をするためのよくわからんおまじない",
          "",
          "\\makeatletter",
          "\\def\\section{\\@startsection {section}{1}{\\z@}{%",
          "-3.5ex plus -1ex minus -.2ex}{2.3ex plus .2ex}{\\normalsize}}",
          "",
          "\\def\\subsection{\\@startsection {subsection}{1}{\\z@}{%",
          "-3.5ex plus -1ex minus -.2ex}{2.3ex plus .2ex}{\\normalsize}}",
          "\\makeatother                                % 見出しのサイズ変更するやつ",
          "",
          "\\makeatletter",
          "  \\renewcommand{\\section}{%",
          "    \\@startsection{section}{1}{\\z@}%",
          "    {0.1\\Cvs}{0.1\\Cvs}%",
          "    {\\normalfont\\large\\headfont\\raggedright}}",
          "\\makeatother",
          "\\makeatletter",
          "  \\renewcommand{\\subsection}{%",
          "    \\@startsection{subsection}{1}{\\z@}%",
          "    {0.1\\Cvs}{0.1\\Cvs}%",
          "    {\\normalfont\\large\\headfont\\raggedright}}",
          "\\makeatother                                  % 見出しの余白をどうこうするやつ",
          "",
          "\\renewcommand{\\figurename}{Fig.}",
          "",
          "\\makeatletter",
          "  \\def\\@maketitle{%",
          "    \\newpage\\null",
          "    \\begin{center}%",
          "      \\let\\footnote\\thanks",
          "      {\\LARGE \\@title \\par}%",
          "      \\vskip 1.0em",
          "      {\\large",
          "        \\lineskip .5em",
          "        \\begin{tabular}[t]{c}%",
          "          \\@author",
          "        \\end{tabular}par}%",
          "      \\vskip 1em",
          "      {\\large \\@date}%",
          "    \\end{center}%",
          "    \\par\\vskip 0.5em",
          "    \\ifvoid\\@abstractbox\\else\\centerline{\\box\\@abstractbox}vskip1.5em\\fi",
          "  }",
          "\\makeatother                                  % タイトルの余白をどうこうするやつ",
          "",
          "\\begin{document}",
          "  ",
          "\\end{document}",
        }),
        insert(0),
    }),
  }
})
