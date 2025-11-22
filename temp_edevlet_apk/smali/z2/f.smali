.class public final Lz2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx2/b<",
        "La3/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ld3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ld3/b$a;->a:Ld3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/f;->a:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lz2/f;->a:Lk9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld3/a;

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lr2/d;->a:Lr2/d;

    .line 15
    .line 16
    new-instance v3, La3/c$a;

    .line 17
    .line 18
    invoke-direct {v3}, La3/c$a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "Null flags"

    .line 26
    .line 27
    if-eqz v4, :cond_5

    .line 28
    .line 29
    iput-object v4, v3, La3/c$a;->c:Ljava/util/Set;

    .line 30
    .line 31
    const-wide/16 v6, 0x7530

    .line 32
    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v3, La3/c$a;->a:Ljava/lang/Long;

    .line 38
    .line 39
    const-wide/32 v6, 0x5265c00

    .line 40
    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, v3, La3/c$a;->b:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v3}, La3/c$a;->a()La3/c;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v2, Lr2/d;->c:Lr2/d;

    .line 56
    .line 57
    new-instance v3, La3/c$a;

    .line 58
    .line 59
    invoke-direct {v3}, La3/c$a;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    iput-object v4, v3, La3/c$a;->c:Ljava/util/Set;

    .line 69
    .line 70
    const-wide/16 v8, 0x3e8

    .line 71
    .line 72
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, v3, La3/c$a;->a:Ljava/lang/Long;

    .line 77
    .line 78
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iput-object v4, v3, La3/c$a;->b:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v3}, La3/c$a;->a()La3/c;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v2, Lr2/d;->b:Lr2/d;

    .line 92
    .line 93
    new-instance v3, La3/c$a;

    .line 94
    .line 95
    invoke-direct {v3}, La3/c$a;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    iput-object v4, v3, La3/c$a;->c:Ljava/util/Set;

    .line 105
    .line 106
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, v3, La3/c$a;->a:Ljava/lang/Long;

    .line 111
    .line 112
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iput-object v4, v3, La3/c$a;->b:Ljava/lang/Long;

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    new-array v4, v4, [La3/e$b;

    .line 120
    .line 121
    sget-object v6, La3/e$b;->a:La3/e$b;

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    aput-object v6, v4, v7

    .line 125
    .line 126
    sget-object v6, La3/e$b;->b:La3/e$b;

    .line 127
    .line 128
    const/4 v7, 0x1

    .line 129
    aput-object v6, v4, v7

    .line 130
    .line 131
    new-instance v6, Ljava/util/HashSet;

    .line 132
    .line 133
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    iput-object v4, v3, La3/c$a;->c:Ljava/util/Set;

    .line 147
    .line 148
    invoke-virtual {v3}, La3/c$a;->a()La3/c;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {}, Lr2/d;->values()[Lr2/d;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    array-length v3, v3

    .line 170
    if-lt v2, v3, :cond_0

    .line 171
    .line 172
    new-instance v2, Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v2, La3/b;

    .line 178
    .line 179
    invoke-direct {v2, v0, v1}, La3/b;-><init>(Ld3/a;Ljava/util/Map;)V

    .line 180
    .line 181
    .line 182
    return-object v2

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v1, "Not all priorities have been configured"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 192
    .line 193
    const-string v1, "missing required property: clock"

    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 200
    .line 201
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 206
    .line 207
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 212
    .line 213
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 218
    .line 219
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0
.end method
