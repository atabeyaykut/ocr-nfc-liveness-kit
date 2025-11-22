.class public final Lrc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/i$a;
    }
.end annotation


# static fields
.field public static final e:Lrc/i;

.field public static final f:Lrc/i;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [Lrc/h;

    .line 4
    .line 5
    sget-object v2, Lrc/h;->q:Lrc/h;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object v2, v1, v3

    .line 9
    .line 10
    sget-object v4, Lrc/h;->r:Lrc/h;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aput-object v4, v1, v5

    .line 14
    .line 15
    sget-object v6, Lrc/h;->s:Lrc/h;

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    aput-object v6, v1, v7

    .line 19
    .line 20
    sget-object v8, Lrc/h;->k:Lrc/h;

    .line 21
    .line 22
    const/4 v9, 0x3

    .line 23
    aput-object v8, v1, v9

    .line 24
    .line 25
    sget-object v10, Lrc/h;->m:Lrc/h;

    .line 26
    .line 27
    const/4 v11, 0x4

    .line 28
    aput-object v10, v1, v11

    .line 29
    .line 30
    sget-object v12, Lrc/h;->l:Lrc/h;

    .line 31
    .line 32
    const/4 v13, 0x5

    .line 33
    aput-object v12, v1, v13

    .line 34
    .line 35
    sget-object v14, Lrc/h;->n:Lrc/h;

    .line 36
    .line 37
    const/4 v15, 0x6

    .line 38
    aput-object v14, v1, v15

    .line 39
    .line 40
    sget-object v16, Lrc/h;->p:Lrc/h;

    .line 41
    .line 42
    const/16 v17, 0x7

    .line 43
    .line 44
    aput-object v16, v1, v17

    .line 45
    .line 46
    sget-object v18, Lrc/h;->o:Lrc/h;

    .line 47
    .line 48
    const/16 v19, 0x8

    .line 49
    .line 50
    aput-object v18, v1, v19

    .line 51
    .line 52
    const/16 v0, 0x10

    .line 53
    .line 54
    new-array v15, v0, [Lrc/h;

    .line 55
    .line 56
    aput-object v2, v15, v3

    .line 57
    .line 58
    aput-object v4, v15, v5

    .line 59
    .line 60
    aput-object v6, v15, v7

    .line 61
    .line 62
    aput-object v8, v15, v9

    .line 63
    .line 64
    aput-object v10, v15, v11

    .line 65
    .line 66
    aput-object v12, v15, v13

    .line 67
    .line 68
    const/4 v2, 0x6

    .line 69
    aput-object v14, v15, v2

    .line 70
    .line 71
    aput-object v16, v15, v17

    .line 72
    .line 73
    aput-object v18, v15, v19

    .line 74
    .line 75
    sget-object v2, Lrc/h;->i:Lrc/h;

    .line 76
    .line 77
    const/16 v4, 0x9

    .line 78
    .line 79
    aput-object v2, v15, v4

    .line 80
    .line 81
    const/16 v2, 0xa

    .line 82
    .line 83
    sget-object v4, Lrc/h;->j:Lrc/h;

    .line 84
    .line 85
    aput-object v4, v15, v2

    .line 86
    .line 87
    const/16 v2, 0xb

    .line 88
    .line 89
    sget-object v4, Lrc/h;->g:Lrc/h;

    .line 90
    .line 91
    aput-object v4, v15, v2

    .line 92
    .line 93
    const/16 v2, 0xc

    .line 94
    .line 95
    sget-object v4, Lrc/h;->h:Lrc/h;

    .line 96
    .line 97
    aput-object v4, v15, v2

    .line 98
    .line 99
    const/16 v2, 0xd

    .line 100
    .line 101
    sget-object v4, Lrc/h;->e:Lrc/h;

    .line 102
    .line 103
    aput-object v4, v15, v2

    .line 104
    .line 105
    const/16 v2, 0xe

    .line 106
    .line 107
    sget-object v4, Lrc/h;->f:Lrc/h;

    .line 108
    .line 109
    aput-object v4, v15, v2

    .line 110
    .line 111
    const/16 v2, 0xf

    .line 112
    .line 113
    sget-object v4, Lrc/h;->d:Lrc/h;

    .line 114
    .line 115
    aput-object v4, v15, v2

    .line 116
    .line 117
    new-instance v2, Lrc/i$a;

    .line 118
    .line 119
    invoke-direct {v2}, Lrc/i$a;-><init>()V

    .line 120
    .line 121
    .line 122
    const/16 v4, 0x9

    .line 123
    .line 124
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, [Lrc/h;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Lrc/i$a;->c([Lrc/h;)V

    .line 131
    .line 132
    .line 133
    new-array v1, v7, [Lrc/f0;

    .line 134
    .line 135
    sget-object v4, Lrc/f0;->b:Lrc/f0;

    .line 136
    .line 137
    aput-object v4, v1, v3

    .line 138
    .line 139
    sget-object v6, Lrc/f0;->c:Lrc/f0;

    .line 140
    .line 141
    aput-object v6, v1, v5

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Lrc/i$a;->f([Lrc/f0;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lrc/i$a;->d()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lrc/i$a;->a()Lrc/i;

    .line 150
    .line 151
    .line 152
    new-instance v1, Lrc/i$a;

    .line 153
    .line 154
    invoke-direct {v1}, Lrc/i$a;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, [Lrc/h;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lrc/i$a;->c([Lrc/h;)V

    .line 164
    .line 165
    .line 166
    new-array v2, v7, [Lrc/f0;

    .line 167
    .line 168
    aput-object v4, v2, v3

    .line 169
    .line 170
    aput-object v6, v2, v5

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lrc/i$a;->f([Lrc/f0;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lrc/i$a;->d()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lrc/i$a;->a()Lrc/i;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sput-object v1, Lrc/i;->e:Lrc/i;

    .line 183
    .line 184
    new-instance v1, Lrc/i$a;

    .line 185
    .line 186
    invoke-direct {v1}, Lrc/i$a;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, [Lrc/h;

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Lrc/i$a;->c([Lrc/h;)V

    .line 196
    .line 197
    .line 198
    new-array v0, v11, [Lrc/f0;

    .line 199
    .line 200
    aput-object v4, v0, v3

    .line 201
    .line 202
    aput-object v6, v0, v5

    .line 203
    .line 204
    sget-object v2, Lrc/f0;->d:Lrc/f0;

    .line 205
    .line 206
    aput-object v2, v0, v7

    .line 207
    .line 208
    sget-object v2, Lrc/f0;->e:Lrc/f0;

    .line 209
    .line 210
    aput-object v2, v0, v9

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Lrc/i$a;->f([Lrc/f0;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Lrc/i$a;->d()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lrc/i$a;->a()Lrc/i;

    .line 219
    .line 220
    .line 221
    new-instance v0, Lrc/i;

    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-direct {v0, v3, v3, v1, v1}, Lrc/i;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    sput-object v0, Lrc/i;->f:Lrc/i;

    .line 228
    .line 229
    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lrc/i;->a:Z

    iput-boolean p2, p0, Lrc/i;->b:Z

    iput-object p3, p0, Lrc/i;->c:[Ljava/lang/String;

    iput-object p4, p0, Lrc/i;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrc/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lrc/i;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lrc/h;->t:Lrc/h$b;

    invoke-virtual {v5, v4}, Lrc/h$b;->b(Ljava/lang/String;)Lrc/h;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrc/i;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lrc/i;->d:[Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lo9/a;->a:Lo9/a;

    .line 16
    .line 17
    invoke-static {v0, v2, v3}, Lsc/c;->i([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lrc/i;->c:[Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, Lrc/h;->t:Lrc/h$b;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lrc/h;->b:Lrc/h$a;

    .line 38
    .line 39
    invoke-static {v0, p1, v2}, Lsc/c;->i([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrc/f0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lrc/i;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lrc/f0$a;->a(Ljava/lang/String;)Lrc/f0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lrc/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lrc/i;

    iget-boolean v2, p1, Lrc/i;->a:Z

    iget-boolean v3, p0, Lrc/i;->a:Z

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    if-eqz v3, :cond_5

    iget-object v2, p0, Lrc/i;->c:[Ljava/lang/String;

    iget-object v3, p1, Lrc/i;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lrc/i;->d:[Ljava/lang/String;

    iget-object v3, p1, Lrc/i;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lrc/i;->b:Z

    iget-boolean p1, p1, Lrc/i;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lrc/i;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lrc/i;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lrc/i;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lrc/i;->b:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    :goto_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrc/i;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConnectionSpec()"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "ConnectionSpec(cipherSuites="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lrc/i;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "[all enabled]"

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", tlsVersions="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lrc/i;->c()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", supportsTlsExtensions="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lrc/i;->b:Z

    .line 50
    .line 51
    const/16 v2, 0x29

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
