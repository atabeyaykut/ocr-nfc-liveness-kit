.class public final Lva/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/c;",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lva/k;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    sget-object v1, Llb/i;->q:Llb/b;

    .line 9
    .line 10
    const-string v2, "java.util.ArrayList"

    .line 11
    .line 12
    const-string v3, "java.util.LinkedList"

    .line 13
    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lva/k;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lva/k;->b(Llb/b;Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Llb/i;->r:Llb/b;

    .line 26
    .line 27
    const-string v2, "java.util.LinkedHashSet"

    .line 28
    .line 29
    const-string v3, "java.util.HashSet"

    .line 30
    .line 31
    const-string v4, "java.util.TreeSet"

    .line 32
    .line 33
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lva/k;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lva/k;->b(Llb/b;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Llb/i;->s:Llb/b;

    .line 45
    .line 46
    const-string v2, "java.util.TreeMap"

    .line 47
    .line 48
    const-string v3, "java.util.LinkedHashMap"

    .line 49
    .line 50
    const-string v4, "java.util.HashMap"

    .line 51
    .line 52
    const-string v5, "java.util.concurrent.ConcurrentHashMap"

    .line 53
    .line 54
    const-string v6, "java.util.concurrent.ConcurrentSkipListMap"

    .line 55
    .line 56
    filled-new-array {v4, v2, v3, v5, v6}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lva/k;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lva/k;->b(Llb/b;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Llb/c;

    .line 68
    .line 69
    const-string v2, "java.util.function.Function"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "java.util.function.UnaryOperator"

    .line 79
    .line 80
    filled-new-array {v2}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lva/k;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lva/k;->b(Llb/b;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Llb/c;

    .line 92
    .line 93
    const-string v2, "java.util.function.BiFunction"

    .line 94
    .line 95
    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "java.util.function.BinaryOperator"

    .line 103
    .line 104
    filled-new-array {v2}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Lva/k;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Lva/k;->b(Llb/b;Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_0

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/util/Map$Entry;

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Llb/b;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Llb/b;

    .line 155
    .line 156
    invoke-virtual {v3}, Llb/b;->b()Llb/c;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2}, Llb/b;->b()Llb/c;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-instance v4, Ll9/g;

    .line 165
    .line 166
    invoke-direct {v4, v3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_0
    invoke-static {v1}, Lm9/e0;->S0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lva/k;->b:Ljava/util/Map;

    .line 178
    .line 179
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Llb/c;

    invoke-direct {v4, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Llb/b;Ljava/util/ArrayList;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Llb/b;

    sget-object v1, Lva/k;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
