.class public Lq7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final r:[C


# instance fields
.field public final a:Ljava/io/Reader;

.field public b:Z

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:[I

.field public n:I

.field public p:[Ljava/lang/String;

.field public q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lq7/a;->r:[C

    new-instance v0, Lq7/a$a;

    invoke-direct {v0}, Lq7/a$a;-><init>()V

    sput-object v0, Ll7/p;->a:Lq7/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq7/a;->b:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lq7/a;->c:[C

    iput v0, p0, Lq7/a;->d:I

    iput v0, p0, Lq7/a;->e:I

    iput v0, p0, Lq7/a;->f:I

    iput v0, p0, Lq7/a;->g:I

    iput v0, p0, Lq7/a;->h:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lq7/a;->m:[I

    const/4 v3, 0x1

    iput v3, p0, Lq7/a;->n:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lq7/a;->p:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lq7/a;->q:[I

    iput-object p1, p0, Lq7/a;->a:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E(I)V
    .locals 6

    iget v0, p0, Lq7/a;->n:I

    iget-object v1, p0, Lq7/a;->m:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lq7/a;->p:[Ljava/lang/String;

    iget v1, p0, Lq7/a;->n:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lq7/a;->m:[I

    iput-object v3, p0, Lq7/a;->q:[I

    iput-object v4, p0, Lq7/a;->p:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lq7/a;->m:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq7/a;->n:I

    aput p1, v0, v1

    return-void
.end method

.method public final F()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->e:I

    const/4 v2, 0x0

    const-string v3, "Unterminated escape sequence"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lq7/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lq7/a;->W(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Lq7/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lq7/a;->d:I

    iget-object v5, p0, Lq7/a;->c:[C

    aget-char v0, v5, v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_e

    const/16 v4, 0x22

    if-eq v0, v4, :cond_f

    const/16 v4, 0x27

    if-eq v0, v4, :cond_f

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_f

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_f

    const/16 v4, 0x62

    if-eq v0, v4, :cond_d

    const/16 v4, 0x66

    if-eq v0, v4, :cond_c

    const/16 v7, 0x6e

    if-eq v0, v7, :cond_b

    const/16 v7, 0x72

    if-eq v0, v7, :cond_a

    const/16 v7, 0x74

    if-eq v0, v7, :cond_9

    const/16 v7, 0x75

    if-ne v0, v7, :cond_8

    const/4 v0, 0x4

    add-int/2addr v1, v0

    iget v7, p0, Lq7/a;->e:I

    if-le v1, v7, :cond_3

    invoke-virtual {p0, v0}, Lq7/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lq7/a;->W(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget v1, p0, Lq7/a;->d:I

    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-char v7, v5, v1

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    goto :goto_4

    :cond_4
    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    if-gt v7, v4, :cond_5

    add-int/lit8 v7, v7, -0x61

    goto :goto_3

    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_6

    const/16 v8, 0x46

    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x41

    :goto_3
    add-int/2addr v7, v6

    :goto_4
    add-int/2addr v7, v3

    int-to-char v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lq7/a;->d:I

    invoke-direct {v2, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "\\u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lq7/a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lq7/a;->d:I

    return v3

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Lq7/a;->W(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v6

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    :cond_e
    iget v2, p0, Lq7/a;->f:I

    add-int/2addr v2, v4

    iput v2, p0, Lq7/a;->f:I

    iput v1, p0, Lq7/a;->g:I

    :cond_f
    return v0
.end method

.method public final J(C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->e:I

    :goto_1
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lq7/a;->c:[C

    aget-char v0, v4, v0

    if-ne v0, p1, :cond_0

    iput v3, p0, Lq7/a;->d:I

    return-void

    :cond_0
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    iput v3, p0, Lq7/a;->d:I

    invoke-virtual {p0}, Lq7/a;->F()C

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget v0, p0, Lq7/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lq7/a;->f:I

    iput v3, p0, Lq7/a;->g:I

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Lq7/a;->d:I

    invoke-virtual {p0, v2}, Lq7/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lq7/a;->W(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final O()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lq7/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lq7/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lq7/a;->d:I

    iget-object v3, p0, Lq7/a;->c:[C

    aget-char v0, v3, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    iget v0, p0, Lq7/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lq7/a;->f:I

    iput v1, p0, Lq7/a;->g:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public P()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    iget v2, p0, Lq7/a;->h:I

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lq7/a;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_1
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v4}, Lq7/a;->E(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_2
    if-ne v2, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lq7/a;->E(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const/4 v3, 0x4

    .line 29
    if-ne v2, v3, :cond_4

    .line 30
    .line 31
    :goto_1
    iget v2, p0, Lq7/a;->n:I

    .line 32
    .line 33
    sub-int/2addr v2, v4

    .line 34
    iput v2, p0, Lq7/a;->n:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_4
    const/4 v3, 0x2

    .line 41
    if-ne v2, v3, :cond_5

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    const/16 v3, 0xe

    .line 45
    .line 46
    const/16 v5, 0xd

    .line 47
    .line 48
    const/16 v6, 0xc

    .line 49
    .line 50
    const/16 v7, 0xa

    .line 51
    .line 52
    const/16 v8, 0x9

    .line 53
    .line 54
    if-eq v2, v3, :cond_b

    .line 55
    .line 56
    if-ne v2, v7, :cond_6

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_6
    const/16 v3, 0x8

    .line 60
    .line 61
    if-eq v2, v3, :cond_a

    .line 62
    .line 63
    if-ne v2, v6, :cond_7

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_7
    if-eq v2, v8, :cond_9

    .line 67
    .line 68
    if-ne v2, v5, :cond_8

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_8
    const/16 v3, 0x10

    .line 72
    .line 73
    if-ne v2, v3, :cond_f

    .line 74
    .line 75
    iget v2, p0, Lq7/a;->d:I

    .line 76
    .line 77
    iget v3, p0, Lq7/a;->k:I

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    iput v2, p0, Lq7/a;->d:I

    .line 81
    .line 82
    goto :goto_7

    .line 83
    :cond_9
    :goto_2
    const/16 v2, 0x22

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 87
    .line 88
    :goto_4
    invoke-virtual {p0, v2}, Lq7/a;->J(C)V

    .line 89
    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_b
    :goto_5
    const/4 v2, 0x0

    .line 93
    :goto_6
    iget v3, p0, Lq7/a;->d:I

    .line 94
    .line 95
    add-int/2addr v3, v2

    .line 96
    iget v9, p0, Lq7/a;->e:I

    .line 97
    .line 98
    if-ge v3, v9, :cond_e

    .line 99
    .line 100
    iget-object v9, p0, Lq7/a;->c:[C

    .line 101
    .line 102
    aget-char v3, v9, v3

    .line 103
    .line 104
    if-eq v3, v8, :cond_d

    .line 105
    .line 106
    if-eq v3, v7, :cond_d

    .line 107
    .line 108
    if-eq v3, v6, :cond_d

    .line 109
    .line 110
    if-eq v3, v5, :cond_d

    .line 111
    .line 112
    const/16 v9, 0x20

    .line 113
    .line 114
    if-eq v3, v9, :cond_d

    .line 115
    .line 116
    const/16 v9, 0x23

    .line 117
    .line 118
    if-eq v3, v9, :cond_c

    .line 119
    .line 120
    const/16 v9, 0x2c

    .line 121
    .line 122
    if-eq v3, v9, :cond_d

    .line 123
    .line 124
    const/16 v9, 0x2f

    .line 125
    .line 126
    if-eq v3, v9, :cond_c

    .line 127
    .line 128
    const/16 v9, 0x3d

    .line 129
    .line 130
    if-eq v3, v9, :cond_c

    .line 131
    .line 132
    const/16 v9, 0x7b

    .line 133
    .line 134
    if-eq v3, v9, :cond_d

    .line 135
    .line 136
    const/16 v9, 0x7d

    .line 137
    .line 138
    if-eq v3, v9, :cond_d

    .line 139
    .line 140
    const/16 v9, 0x3a

    .line 141
    .line 142
    if-eq v3, v9, :cond_d

    .line 143
    .line 144
    const/16 v9, 0x3b

    .line 145
    .line 146
    if-eq v3, v9, :cond_c

    .line 147
    .line 148
    packed-switch v3, :pswitch_data_0

    .line 149
    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_c
    :pswitch_0
    invoke-virtual {p0}, Lq7/a;->c()V

    .line 155
    .line 156
    .line 157
    :cond_d
    :pswitch_1
    iget v3, p0, Lq7/a;->d:I

    .line 158
    .line 159
    add-int/2addr v3, v2

    .line 160
    iput v3, p0, Lq7/a;->d:I

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_e
    iput v3, p0, Lq7/a;->d:I

    .line 164
    .line 165
    invoke-virtual {p0, v4}, Lq7/a;->g(I)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_b

    .line 170
    .line 171
    :cond_f
    :goto_7
    iput v0, p0, Lq7/a;->h:I

    .line 172
    .line 173
    if-nez v1, :cond_0

    .line 174
    .line 175
    iget-object v0, p0, Lq7/a;->q:[I

    .line 176
    .line 177
    iget v1, p0, Lq7/a;->n:I

    .line 178
    .line 179
    add-int/lit8 v2, v1, -0x1

    .line 180
    .line 181
    aget v3, v0, v2

    .line 182
    .line 183
    add-int/2addr v3, v4

    .line 184
    aput v3, v0, v2

    .line 185
    .line 186
    iget-object v0, p0, Lq7/a;->p:[Ljava/lang/String;

    .line 187
    .line 188
    sub-int/2addr v1, v4

    .line 189
    const-string v2, "null"

    .line 190
    .line 191
    aput-object v2, v0, v1

    .line 192
    .line 193
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final W(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lq7/c;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Lq7/c;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq7/a;->E(I)V

    iget-object v1, p0, Lq7/a;->q:[I

    iget v2, p0, Lq7/a;->n:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lq7/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lq7/a;->E(I)V

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lq7/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lq7/a;->W(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->h:I

    iget-object v1, p0, Lq7/a;->m:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lq7/a;->n:I

    iget-object v0, p0, Lq7/a;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lq7/a;->m:[I

    .line 4
    .line 5
    iget v2, v0, Lq7/a;->n:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, -0x1

    .line 8
    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/16 v9, 0x5d

    .line 13
    .line 14
    const/16 v10, 0x3b

    .line 15
    .line 16
    const/16 v11, 0x2c

    .line 17
    .line 18
    const/4 v12, 0x6

    .line 19
    const/4 v13, 0x3

    .line 20
    iget-object v14, v0, Lq7/a;->c:[C

    .line 21
    .line 22
    const/4 v15, 0x7

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v4, 0x5

    .line 26
    const/4 v8, 0x1

    .line 27
    if-ne v3, v8, :cond_0

    .line 28
    .line 29
    sub-int/2addr v2, v8

    .line 30
    aput v6, v1, v2

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    if-ne v3, v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, v8}, Lq7/a;->r(Z)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v1, v11, :cond_c

    .line 41
    .line 42
    if-eq v1, v10, :cond_2

    .line 43
    .line 44
    if-ne v1, v9, :cond_1

    .line 45
    .line 46
    iput v5, v0, Lq7/a;->h:I

    .line 47
    .line 48
    return v5

    .line 49
    :cond_1
    const-string v1, "Unterminated array"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v7

    .line 55
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_3
    if-eq v3, v13, :cond_42

    .line 61
    .line 62
    if-ne v3, v4, :cond_4

    .line 63
    .line 64
    goto/16 :goto_1a

    .line 65
    .line 66
    :cond_4
    if-ne v3, v5, :cond_7

    .line 67
    .line 68
    sub-int/2addr v2, v8

    .line 69
    aput v4, v1, v2

    .line 70
    .line 71
    invoke-virtual {v0, v8}, Lq7/a;->r(Z)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/16 v2, 0x3a

    .line 76
    .line 77
    if-eq v1, v2, :cond_c

    .line 78
    .line 79
    const/16 v2, 0x3d

    .line 80
    .line 81
    if-ne v1, v2, :cond_6

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 84
    .line 85
    .line 86
    iget v1, v0, Lq7/a;->d:I

    .line 87
    .line 88
    iget v2, v0, Lq7/a;->e:I

    .line 89
    .line 90
    if-lt v1, v2, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v8}, Lq7/a;->g(I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_c

    .line 97
    .line 98
    :cond_5
    iget v1, v0, Lq7/a;->d:I

    .line 99
    .line 100
    aget-char v2, v14, v1

    .line 101
    .line 102
    const/16 v5, 0x3e

    .line 103
    .line 104
    if-ne v2, v5, :cond_c

    .line 105
    .line 106
    add-int/2addr v1, v8

    .line 107
    iput v1, v0, Lq7/a;->d:I

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    const-string v1, "Expected \':\'"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v7

    .line 116
    :cond_7
    if-ne v3, v12, :cond_d

    .line 117
    .line 118
    iget-boolean v1, v0, Lq7/a;->b:Z

    .line 119
    .line 120
    if-eqz v1, :cond_b

    .line 121
    .line 122
    invoke-virtual {v0, v8}, Lq7/a;->r(Z)I

    .line 123
    .line 124
    .line 125
    iget v1, v0, Lq7/a;->d:I

    .line 126
    .line 127
    sub-int/2addr v1, v8

    .line 128
    iput v1, v0, Lq7/a;->d:I

    .line 129
    .line 130
    sget-object v2, Lq7/a;->r:[C

    .line 131
    .line 132
    array-length v5, v2

    .line 133
    add-int/2addr v1, v5

    .line 134
    iget v5, v0, Lq7/a;->e:I

    .line 135
    .line 136
    if-le v1, v5, :cond_8

    .line 137
    .line 138
    array-length v1, v2

    .line 139
    invoke-virtual {v0, v1}, Lq7/a;->g(I)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_8

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    const/4 v1, 0x0

    .line 147
    :goto_0
    array-length v5, v2

    .line 148
    if-ge v1, v5, :cond_a

    .line 149
    .line 150
    iget v5, v0, Lq7/a;->d:I

    .line 151
    .line 152
    add-int/2addr v5, v1

    .line 153
    aget-char v5, v14, v5

    .line 154
    .line 155
    aget-char v7, v2, v1

    .line 156
    .line 157
    if-eq v5, v7, :cond_9

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    goto :goto_0

    .line 164
    :cond_a
    iget v1, v0, Lq7/a;->d:I

    .line 165
    .line 166
    array-length v2, v2

    .line 167
    add-int/2addr v1, v2

    .line 168
    iput v1, v0, Lq7/a;->d:I

    .line 169
    .line 170
    :cond_b
    :goto_1
    iget-object v1, v0, Lq7/a;->m:[I

    .line 171
    .line 172
    iget v2, v0, Lq7/a;->n:I

    .line 173
    .line 174
    sub-int/2addr v2, v8

    .line 175
    aput v15, v1, v2

    .line 176
    .line 177
    :cond_c
    :goto_2
    const/4 v1, 0x0

    .line 178
    :goto_3
    const/16 v2, 0x8

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_d
    const/4 v1, 0x0

    .line 182
    if-ne v3, v15, :cond_f

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lq7/a;->r(Z)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    const/4 v5, -0x1

    .line 189
    if-ne v2, v5, :cond_e

    .line 190
    .line 191
    const/16 v4, 0x11

    .line 192
    .line 193
    goto/16 :goto_1b

    .line 194
    .line 195
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 196
    .line 197
    .line 198
    iget v2, v0, Lq7/a;->d:I

    .line 199
    .line 200
    sub-int/2addr v2, v8

    .line 201
    iput v2, v0, Lq7/a;->d:I

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_f
    const/16 v2, 0x8

    .line 205
    .line 206
    if-eq v3, v2, :cond_41

    .line 207
    .line 208
    :goto_4
    invoke-virtual {v0, v8}, Lq7/a;->r(Z)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    const/16 v7, 0x22

    .line 213
    .line 214
    if-eq v5, v7, :cond_40

    .line 215
    .line 216
    const/16 v7, 0x27

    .line 217
    .line 218
    if-eq v5, v7, :cond_3f

    .line 219
    .line 220
    if-eq v5, v11, :cond_3b

    .line 221
    .line 222
    if-eq v5, v10, :cond_3b

    .line 223
    .line 224
    const/16 v2, 0x5b

    .line 225
    .line 226
    if-eq v5, v2, :cond_3a

    .line 227
    .line 228
    if-eq v5, v9, :cond_39

    .line 229
    .line 230
    const/16 v2, 0x7b

    .line 231
    .line 232
    if-eq v5, v2, :cond_38

    .line 233
    .line 234
    iget v2, v0, Lq7/a;->d:I

    .line 235
    .line 236
    sub-int/2addr v2, v8

    .line 237
    iput v2, v0, Lq7/a;->d:I

    .line 238
    .line 239
    aget-char v2, v14, v2

    .line 240
    .line 241
    const/16 v3, 0x74

    .line 242
    .line 243
    if-eq v2, v3, :cond_14

    .line 244
    .line 245
    const/16 v3, 0x54

    .line 246
    .line 247
    if-ne v2, v3, :cond_10

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_10
    const/16 v3, 0x66

    .line 251
    .line 252
    if-eq v2, v3, :cond_13

    .line 253
    .line 254
    const/16 v3, 0x46

    .line 255
    .line 256
    if-ne v2, v3, :cond_11

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_11
    const/16 v3, 0x6e

    .line 260
    .line 261
    if-eq v2, v3, :cond_12

    .line 262
    .line 263
    const/16 v3, 0x4e

    .line 264
    .line 265
    if-ne v2, v3, :cond_19

    .line 266
    .line 267
    :cond_12
    const-string v2, "null"

    .line 268
    .line 269
    const-string v3, "NULL"

    .line 270
    .line 271
    const/4 v5, 0x7

    .line 272
    goto :goto_7

    .line 273
    :cond_13
    :goto_5
    const-string v2, "false"

    .line 274
    .line 275
    const-string v3, "FALSE"

    .line 276
    .line 277
    const/4 v5, 0x6

    .line 278
    goto :goto_7

    .line 279
    :cond_14
    :goto_6
    const-string v2, "true"

    .line 280
    .line 281
    const-string v3, "TRUE"

    .line 282
    .line 283
    const/4 v5, 0x5

    .line 284
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    const/4 v9, 0x1

    .line 289
    :goto_8
    if-ge v9, v7, :cond_17

    .line 290
    .line 291
    iget v10, v0, Lq7/a;->d:I

    .line 292
    .line 293
    add-int/2addr v10, v9

    .line 294
    iget v11, v0, Lq7/a;->e:I

    .line 295
    .line 296
    if-lt v10, v11, :cond_15

    .line 297
    .line 298
    add-int/lit8 v10, v9, 0x1

    .line 299
    .line 300
    invoke-virtual {v0, v10}, Lq7/a;->g(I)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-nez v10, :cond_15

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_15
    iget v10, v0, Lq7/a;->d:I

    .line 308
    .line 309
    add-int/2addr v10, v9

    .line 310
    aget-char v10, v14, v10

    .line 311
    .line 312
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eq v10, v11, :cond_16

    .line 317
    .line 318
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-eq v10, v11, :cond_16

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_17
    iget v2, v0, Lq7/a;->d:I

    .line 329
    .line 330
    add-int/2addr v2, v7

    .line 331
    iget v3, v0, Lq7/a;->e:I

    .line 332
    .line 333
    if-lt v2, v3, :cond_18

    .line 334
    .line 335
    add-int/lit8 v2, v7, 0x1

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lq7/a;->g(I)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_1a

    .line 342
    .line 343
    :cond_18
    iget v2, v0, Lq7/a;->d:I

    .line 344
    .line 345
    add-int/2addr v2, v7

    .line 346
    aget-char v2, v14, v2

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Lq7/a;->j(C)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_1a

    .line 353
    .line 354
    :cond_19
    :goto_9
    const/4 v5, 0x0

    .line 355
    goto :goto_a

    .line 356
    :cond_1a
    iget v2, v0, Lq7/a;->d:I

    .line 357
    .line 358
    add-int/2addr v2, v7

    .line 359
    iput v2, v0, Lq7/a;->d:I

    .line 360
    .line 361
    iput v5, v0, Lq7/a;->h:I

    .line 362
    .line 363
    :goto_a
    if-eqz v5, :cond_1b

    .line 364
    .line 365
    return v5

    .line 366
    :cond_1b
    iget v2, v0, Lq7/a;->d:I

    .line 367
    .line 368
    iget v3, v0, Lq7/a;->e:I

    .line 369
    .line 370
    const-wide/16 v9, 0x0

    .line 371
    .line 372
    move-wide v12, v9

    .line 373
    const/4 v5, 0x0

    .line 374
    const/4 v7, 0x0

    .line 375
    const/4 v11, 0x0

    .line 376
    const/16 v18, 0x1

    .line 377
    .line 378
    :goto_b
    add-int v1, v2, v5

    .line 379
    .line 380
    if-ne v1, v3, :cond_1e

    .line 381
    .line 382
    array-length v1, v14

    .line 383
    if-ne v5, v1, :cond_1c

    .line 384
    .line 385
    goto/16 :goto_17

    .line 386
    .line 387
    :cond_1c
    add-int/lit8 v1, v5, 0x1

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lq7/a;->g(I)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_1d

    .line 394
    .line 395
    goto/16 :goto_12

    .line 396
    .line 397
    :cond_1d
    iget v1, v0, Lq7/a;->d:I

    .line 398
    .line 399
    iget v2, v0, Lq7/a;->e:I

    .line 400
    .line 401
    move v3, v2

    .line 402
    move v2, v1

    .line 403
    :cond_1e
    add-int v1, v2, v5

    .line 404
    .line 405
    aget-char v1, v14, v1

    .line 406
    .line 407
    const/16 v15, 0x2b

    .line 408
    .line 409
    if-eq v1, v15, :cond_34

    .line 410
    .line 411
    const/16 v15, 0x45

    .line 412
    .line 413
    if-eq v1, v15, :cond_32

    .line 414
    .line 415
    const/16 v15, 0x65

    .line 416
    .line 417
    if-eq v1, v15, :cond_32

    .line 418
    .line 419
    const/16 v15, 0x2d

    .line 420
    .line 421
    if-eq v1, v15, :cond_30

    .line 422
    .line 423
    const/16 v15, 0x2e

    .line 424
    .line 425
    if-eq v1, v15, :cond_2f

    .line 426
    .line 427
    const/16 v15, 0x30

    .line 428
    .line 429
    if-lt v1, v15, :cond_29

    .line 430
    .line 431
    const/16 v15, 0x39

    .line 432
    .line 433
    if-le v1, v15, :cond_1f

    .line 434
    .line 435
    goto :goto_11

    .line 436
    :cond_1f
    if-eq v7, v8, :cond_27

    .line 437
    .line 438
    if-nez v7, :cond_20

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_20
    if-ne v7, v6, :cond_24

    .line 442
    .line 443
    cmp-long v15, v12, v9

    .line 444
    .line 445
    if-nez v15, :cond_21

    .line 446
    .line 447
    goto/16 :goto_17

    .line 448
    .line 449
    :cond_21
    const-wide/16 v19, 0xa

    .line 450
    .line 451
    mul-long v19, v19, v12

    .line 452
    .line 453
    add-int/lit8 v1, v1, -0x30

    .line 454
    .line 455
    int-to-long v8, v1

    .line 456
    sub-long v19, v19, v8

    .line 457
    .line 458
    const-wide v8, -0xcccccccccccccccL

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    cmp-long v1, v12, v8

    .line 464
    .line 465
    if-gtz v1, :cond_23

    .line 466
    .line 467
    if-nez v1, :cond_22

    .line 468
    .line 469
    cmp-long v1, v19, v12

    .line 470
    .line 471
    if-gez v1, :cond_22

    .line 472
    .line 473
    goto :goto_c

    .line 474
    :cond_22
    const/4 v1, 0x0

    .line 475
    goto :goto_d

    .line 476
    :cond_23
    :goto_c
    const/4 v1, 0x1

    .line 477
    :goto_d
    and-int v1, v1, v18

    .line 478
    .line 479
    move/from16 v18, v1

    .line 480
    .line 481
    move-wide/from16 v12, v19

    .line 482
    .line 483
    const/4 v8, 0x3

    .line 484
    goto :goto_e

    .line 485
    :cond_24
    const/4 v8, 0x3

    .line 486
    if-ne v7, v8, :cond_25

    .line 487
    .line 488
    const/4 v7, 0x4

    .line 489
    :goto_e
    const/4 v9, 0x6

    .line 490
    goto :goto_10

    .line 491
    :cond_25
    const/4 v9, 0x6

    .line 492
    if-eq v7, v4, :cond_26

    .line 493
    .line 494
    if-ne v7, v9, :cond_28

    .line 495
    .line 496
    :cond_26
    const/4 v7, 0x7

    .line 497
    goto :goto_10

    .line 498
    :cond_27
    :goto_f
    const/4 v8, 0x3

    .line 499
    const/4 v9, 0x6

    .line 500
    add-int/lit8 v1, v1, -0x30

    .line 501
    .line 502
    neg-int v1, v1

    .line 503
    int-to-long v12, v1

    .line 504
    const/4 v7, 0x2

    .line 505
    :cond_28
    :goto_10
    const/4 v1, 0x7

    .line 506
    const-wide/16 v16, 0x0

    .line 507
    .line 508
    goto/16 :goto_16

    .line 509
    .line 510
    :cond_29
    :goto_11
    invoke-virtual {v0, v1}, Lq7/a;->j(C)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-nez v1, :cond_35

    .line 515
    .line 516
    :goto_12
    if-ne v7, v6, :cond_2d

    .line 517
    .line 518
    if-eqz v18, :cond_2d

    .line 519
    .line 520
    const-wide/high16 v1, -0x8000000000000000L

    .line 521
    .line 522
    cmp-long v3, v12, v1

    .line 523
    .line 524
    if-nez v3, :cond_2a

    .line 525
    .line 526
    if-eqz v11, :cond_2d

    .line 527
    .line 528
    :cond_2a
    const-wide/16 v16, 0x0

    .line 529
    .line 530
    cmp-long v1, v12, v16

    .line 531
    .line 532
    if-nez v1, :cond_2b

    .line 533
    .line 534
    if-nez v11, :cond_2d

    .line 535
    .line 536
    :cond_2b
    if-eqz v11, :cond_2c

    .line 537
    .line 538
    goto :goto_13

    .line 539
    :cond_2c
    neg-long v12, v12

    .line 540
    :goto_13
    iput-wide v12, v0, Lq7/a;->j:J

    .line 541
    .line 542
    iget v1, v0, Lq7/a;->d:I

    .line 543
    .line 544
    add-int/2addr v1, v5

    .line 545
    iput v1, v0, Lq7/a;->d:I

    .line 546
    .line 547
    const/16 v1, 0xf

    .line 548
    .line 549
    const/16 v8, 0xf

    .line 550
    .line 551
    goto :goto_14

    .line 552
    :cond_2d
    if-eq v7, v6, :cond_2e

    .line 553
    .line 554
    const/4 v1, 0x4

    .line 555
    if-eq v7, v1, :cond_2e

    .line 556
    .line 557
    const/4 v1, 0x7

    .line 558
    if-ne v7, v1, :cond_35

    .line 559
    .line 560
    :cond_2e
    iput v5, v0, Lq7/a;->k:I

    .line 561
    .line 562
    const/16 v1, 0x10

    .line 563
    .line 564
    const/16 v8, 0x10

    .line 565
    .line 566
    :goto_14
    iput v8, v0, Lq7/a;->h:I

    .line 567
    .line 568
    goto :goto_18

    .line 569
    :cond_2f
    move-wide/from16 v16, v9

    .line 570
    .line 571
    const/4 v1, 0x7

    .line 572
    const/4 v8, 0x3

    .line 573
    const/4 v9, 0x6

    .line 574
    if-ne v7, v6, :cond_35

    .line 575
    .line 576
    const/4 v7, 0x3

    .line 577
    goto :goto_16

    .line 578
    :cond_30
    move-wide/from16 v16, v9

    .line 579
    .line 580
    const/4 v1, 0x7

    .line 581
    const/4 v8, 0x3

    .line 582
    const/4 v9, 0x6

    .line 583
    if-nez v7, :cond_31

    .line 584
    .line 585
    const/4 v7, 0x1

    .line 586
    const/4 v11, 0x1

    .line 587
    goto :goto_16

    .line 588
    :cond_31
    if-ne v7, v4, :cond_35

    .line 589
    .line 590
    goto :goto_15

    .line 591
    :cond_32
    move-wide/from16 v16, v9

    .line 592
    .line 593
    const/4 v1, 0x7

    .line 594
    const/4 v8, 0x3

    .line 595
    const/4 v9, 0x6

    .line 596
    if-eq v7, v6, :cond_33

    .line 597
    .line 598
    const/4 v10, 0x4

    .line 599
    if-ne v7, v10, :cond_35

    .line 600
    .line 601
    :cond_33
    const/4 v7, 0x5

    .line 602
    goto :goto_16

    .line 603
    :cond_34
    move-wide/from16 v16, v9

    .line 604
    .line 605
    const/4 v1, 0x7

    .line 606
    const/4 v8, 0x3

    .line 607
    const/4 v9, 0x6

    .line 608
    if-ne v7, v4, :cond_35

    .line 609
    .line 610
    :goto_15
    const/4 v7, 0x6

    .line 611
    :goto_16
    add-int/lit8 v5, v5, 0x1

    .line 612
    .line 613
    move-wide/from16 v9, v16

    .line 614
    .line 615
    const/4 v8, 0x1

    .line 616
    const/4 v15, 0x7

    .line 617
    goto/16 :goto_b

    .line 618
    .line 619
    :cond_35
    :goto_17
    const/4 v8, 0x0

    .line 620
    :goto_18
    if-eqz v8, :cond_36

    .line 621
    .line 622
    return v8

    .line 623
    :cond_36
    iget v1, v0, Lq7/a;->d:I

    .line 624
    .line 625
    aget-char v1, v14, v1

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Lq7/a;->j(C)Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-eqz v1, :cond_37

    .line 632
    .line 633
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 634
    .line 635
    .line 636
    const/16 v4, 0xa

    .line 637
    .line 638
    goto/16 :goto_1b

    .line 639
    .line 640
    :cond_37
    const-string v1, "Expected value"

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const/4 v1, 0x0

    .line 646
    throw v1

    .line 647
    :cond_38
    const/4 v2, 0x1

    .line 648
    iput v2, v0, Lq7/a;->h:I

    .line 649
    .line 650
    return v2

    .line 651
    :cond_39
    const/4 v1, 0x7

    .line 652
    const/4 v2, 0x1

    .line 653
    if-ne v3, v2, :cond_3c

    .line 654
    .line 655
    const/4 v4, 0x4

    .line 656
    goto/16 :goto_1b

    .line 657
    .line 658
    :cond_3a
    const/4 v8, 0x3

    .line 659
    const/4 v4, 0x3

    .line 660
    goto/16 :goto_1b

    .line 661
    .line 662
    :cond_3b
    const/4 v1, 0x7

    .line 663
    const/4 v2, 0x1

    .line 664
    :cond_3c
    if-eq v3, v2, :cond_3e

    .line 665
    .line 666
    if-ne v3, v6, :cond_3d

    .line 667
    .line 668
    goto :goto_19

    .line 669
    :cond_3d
    const-string v1, "Unexpected value"

    .line 670
    .line 671
    invoke-virtual {v0, v1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    const/4 v1, 0x0

    .line 675
    throw v1

    .line 676
    :cond_3e
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 677
    .line 678
    .line 679
    iget v3, v0, Lq7/a;->d:I

    .line 680
    .line 681
    sub-int/2addr v3, v2

    .line 682
    iput v3, v0, Lq7/a;->d:I

    .line 683
    .line 684
    const/4 v4, 0x7

    .line 685
    goto :goto_1b

    .line 686
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 687
    .line 688
    .line 689
    const/16 v4, 0x8

    .line 690
    .line 691
    goto :goto_1b

    .line 692
    :cond_40
    const/16 v4, 0x9

    .line 693
    .line 694
    goto :goto_1b

    .line 695
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 696
    .line 697
    const-string v2, "JsonReader is closed"

    .line 698
    .line 699
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    throw v1

    .line 703
    :cond_42
    :goto_1a
    const/4 v5, 0x1

    .line 704
    sub-int/2addr v2, v5

    .line 705
    const/4 v7, 0x4

    .line 706
    aput v7, v1, v2

    .line 707
    .line 708
    const/16 v1, 0x7d

    .line 709
    .line 710
    if-ne v3, v4, :cond_45

    .line 711
    .line 712
    invoke-virtual {v0, v5}, Lq7/a;->r(Z)I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eq v2, v11, :cond_45

    .line 717
    .line 718
    if-eq v2, v10, :cond_44

    .line 719
    .line 720
    if-ne v2, v1, :cond_43

    .line 721
    .line 722
    iput v6, v0, Lq7/a;->h:I

    .line 723
    .line 724
    return v6

    .line 725
    :cond_43
    const-string v1, "Unterminated object"

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    const/4 v1, 0x0

    .line 731
    throw v1

    .line 732
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 733
    .line 734
    .line 735
    :cond_45
    const/4 v2, 0x1

    .line 736
    invoke-virtual {v0, v2}, Lq7/a;->r(Z)I

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    const/16 v7, 0x22

    .line 741
    .line 742
    if-eq v5, v7, :cond_4a

    .line 743
    .line 744
    const/16 v7, 0x27

    .line 745
    .line 746
    if-eq v5, v7, :cond_49

    .line 747
    .line 748
    const-string v7, "Expected name"

    .line 749
    .line 750
    if-eq v5, v1, :cond_47

    .line 751
    .line 752
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 753
    .line 754
    .line 755
    iget v1, v0, Lq7/a;->d:I

    .line 756
    .line 757
    sub-int/2addr v1, v2

    .line 758
    iput v1, v0, Lq7/a;->d:I

    .line 759
    .line 760
    int-to-char v1, v5

    .line 761
    invoke-virtual {v0, v1}, Lq7/a;->j(C)Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-eqz v1, :cond_46

    .line 766
    .line 767
    const/16 v4, 0xe

    .line 768
    .line 769
    goto :goto_1b

    .line 770
    :cond_46
    invoke-virtual {v0, v7}, Lq7/a;->W(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    const/4 v1, 0x0

    .line 774
    throw v1

    .line 775
    :cond_47
    const/4 v1, 0x0

    .line 776
    if-eq v3, v4, :cond_48

    .line 777
    .line 778
    iput v6, v0, Lq7/a;->h:I

    .line 779
    .line 780
    return v6

    .line 781
    :cond_48
    invoke-virtual {v0, v7}, Lq7/a;->W(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    throw v1

    .line 785
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lq7/a;->c()V

    .line 786
    .line 787
    .line 788
    const/16 v4, 0xc

    .line 789
    .line 790
    goto :goto_1b

    .line 791
    :cond_4a
    const/16 v4, 0xd

    .line 792
    .line 793
    :goto_1b
    iput v4, v0, Lq7/a;->h:I

    .line 794
    .line 795
    return v4
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lq7/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq7/a;->n:I

    iget-object v1, p0, Lq7/a;->q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lq7/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq7/a;->n:I

    iget-object v1, p0, Lq7/a;->p:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lq7/a;->q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->g:I

    iget v1, p0, Lq7/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lq7/a;->g:I

    iget v0, p0, Lq7/a;->e:I

    const/4 v2, 0x0

    iget-object v3, p0, Lq7/a;->c:[C

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lq7/a;->e:I

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lq7/a;->e:I

    :goto_0
    iput v2, p0, Lq7/a;->d:I

    :cond_1
    iget v0, p0, Lq7/a;->e:I

    array-length v1, v3

    sub-int/2addr v1, v0

    iget-object v4, p0, Lq7/a;->a:Ljava/io/Reader;

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lq7/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lq7/a;->e:I

    iget v0, p0, Lq7/a;->f:I

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lq7/a;->g:I

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    aget-char v5, v3, v2

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lq7/a;->d:I

    add-int/2addr v5, v4

    iput v5, p0, Lq7/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq7/a;->g:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lq7/a;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lq7/a;->m:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq7/a;->p:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq7/a;->q:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lq7/a;->c()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lq7/a;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lq7/a;->d:I

    .line 6
    .line 7
    iget v2, p0, Lq7/a;->g:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, " at line "

    .line 13
    .line 14
    const-string v3, " column "

    .line 15
    .line 16
    const-string v4, " path "

    .line 17
    .line 18
    invoke-static {v2, v0, v3, v1, v4}, Landroidx/constraintlayout/core/a;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lq7/a;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public m()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lq7/a;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lq7/a;->d:I

    iget v4, p0, Lq7/a;->k:I

    iget-object v5, p0, Lq7/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lq7/a;->d:I

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lq7/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lq7/a;->t(C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    :goto_3
    iput v3, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lq7/a;->b:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lq7/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lq7/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lq7/a;->l:Ljava/lang/String;

    iput v2, p0, Lq7/a;->h:I

    iget-object v2, p0, Lq7/a;->q:[I

    iget v3, p0, Lq7/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public o()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lq7/a;->j:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    iput v3, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lq7/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lq7/a;->d:I

    iget v4, p0, Lq7/a;->k:I

    iget-object v5, p0, Lq7/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lq7/a;->d:I

    goto :goto_4

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lq7/a;->y()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lq7/a;->t(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lq7/a;->h:I

    iget-object v1, p0, Lq7/a;->q:[I

    iget v4, p0, Lq7/a;->n:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v7, v5, v0

    if-nez v7, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    iput v3, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lq7/a;->j:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lq7/a;->d:I

    iget v4, p0, Lq7/a;->k:I

    iget-object v5, p0, Lq7/a;->c:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    iget v0, p0, Lq7/a;->d:I

    iget v1, p0, Lq7/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lq7/a;->d:I

    goto :goto_4

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lq7/a;->y()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lq7/a;->t(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lq7/a;->h:I

    iget-object v4, p0, Lq7/a;->q:[I

    iget v5, p0, Lq7/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v8, v6, v0

    if-nez v8, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    iput v2, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lq7/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lq7/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lq7/a;->t(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lq7/a;->h:I

    iget-object v1, p0, Lq7/a;->p:[Ljava/lang/String;

    iget v2, p0, Lq7/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lq7/a;->d:I

    .line 2
    .line 3
    :goto_1
    iget v1, p0, Lq7/a;->e:I

    .line 4
    .line 5
    :goto_2
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iput v0, p0, Lq7/a;->d:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lq7/a;->g(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "End of input"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    iget v0, p0, Lq7/a;->d:I

    .line 45
    .line 46
    iget v1, p0, Lq7/a;->e:I

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 49
    .line 50
    iget-object v4, p0, Lq7/a;->c:[C

    .line 51
    .line 52
    aget-char v0, v4, v0

    .line 53
    .line 54
    const/16 v5, 0xa

    .line 55
    .line 56
    if-ne v0, v5, :cond_3

    .line 57
    .line 58
    iget v0, p0, Lq7/a;->f:I

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    iput v0, p0, Lq7/a;->f:I

    .line 62
    .line 63
    iput v3, p0, Lq7/a;->g:I

    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_3
    const/16 v6, 0x20

    .line 68
    .line 69
    if-eq v0, v6, :cond_10

    .line 70
    .line 71
    const/16 v6, 0xd

    .line 72
    .line 73
    if-eq v0, v6, :cond_10

    .line 74
    .line 75
    const/16 v6, 0x9

    .line 76
    .line 77
    if-ne v0, v6, :cond_4

    .line 78
    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_4
    const/16 v6, 0x2f

    .line 82
    .line 83
    if-ne v0, v6, :cond_e

    .line 84
    .line 85
    iput v3, p0, Lq7/a;->d:I

    .line 86
    .line 87
    const/4 v7, 0x2

    .line 88
    if-ne v3, v1, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    iput v3, p0, Lq7/a;->d:I

    .line 93
    .line 94
    invoke-virtual {p0, v7}, Lq7/a;->g(I)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget v3, p0, Lq7/a;->d:I

    .line 99
    .line 100
    add-int/2addr v3, v2

    .line 101
    iput v3, p0, Lq7/a;->d:I

    .line 102
    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    return v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lq7/a;->c()V

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lq7/a;->d:I

    .line 110
    .line 111
    aget-char v3, v4, v1

    .line 112
    .line 113
    const/16 v8, 0x2a

    .line 114
    .line 115
    if-eq v3, v8, :cond_7

    .line 116
    .line 117
    if-eq v3, v6, :cond_6

    .line 118
    .line 119
    return v0

    .line 120
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    iput v1, p0, Lq7/a;->d:I

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    iput v1, p0, Lq7/a;->d:I

    .line 128
    .line 129
    :goto_3
    iget v0, p0, Lq7/a;->d:I

    .line 130
    .line 131
    add-int/2addr v0, v7

    .line 132
    iget v1, p0, Lq7/a;->e:I

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    if-le v0, v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p0, v7}, Lq7/a;->g(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    const/4 v2, 0x0

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    :goto_4
    iget v0, p0, Lq7/a;->d:I

    .line 147
    .line 148
    aget-char v1, v4, v0

    .line 149
    .line 150
    if-ne v1, v5, :cond_a

    .line 151
    .line 152
    iget v1, p0, Lq7/a;->f:I

    .line 153
    .line 154
    add-int/2addr v1, v2

    .line 155
    iput v1, p0, Lq7/a;->f:I

    .line 156
    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    iput v0, p0, Lq7/a;->g:I

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_a
    :goto_5
    if-ge v3, v7, :cond_c

    .line 163
    .line 164
    iget v0, p0, Lq7/a;->d:I

    .line 165
    .line 166
    add-int/2addr v0, v3

    .line 167
    aget-char v0, v4, v0

    .line 168
    .line 169
    const-string v1, "*/"

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eq v0, v1, :cond_b

    .line 176
    .line 177
    :goto_6
    iget v0, p0, Lq7/a;->d:I

    .line 178
    .line 179
    add-int/2addr v0, v2

    .line 180
    iput v0, p0, Lq7/a;->d:I

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 187
    .line 188
    iget v0, p0, Lq7/a;->d:I

    .line 189
    .line 190
    add-int/2addr v0, v7

    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_d
    const-string p1, "Unterminated comment"

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lq7/a;->W(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    throw p1

    .line 200
    :cond_e
    iput v3, p0, Lq7/a;->d:I

    .line 201
    .line 202
    const/16 v1, 0x23

    .line 203
    .line 204
    if-ne v0, v1, :cond_f

    .line 205
    .line 206
    invoke-virtual {p0}, Lq7/a;->c()V

    .line 207
    .line 208
    .line 209
    :goto_8
    invoke-virtual {p0}, Lq7/a;->O()V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_f
    return v0

    .line 215
    :cond_10
    :goto_9
    move v0, v3

    .line 216
    goto/16 :goto_2
.end method

.method public s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->h:I

    iget-object v0, p0, Lq7/a;->q:[I

    iget v1, p0, Lq7/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t(C)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Lq7/a;->d:I

    iget v3, p0, Lq7/a;->e:I

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0x10

    iget-object v7, p0, Lq7/a;->c:[C

    if-ge v4, v3, :cond_5

    add-int/lit8 v8, v4, 0x1

    aget-char v4, v7, v4

    if-ne v4, p1, :cond_1

    iput v8, p0, Lq7/a;->d:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v7, v2, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_3

    iput v8, p0, Lq7/a;->d:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_2

    add-int/lit8 v1, v8, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->F()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    iget v4, p0, Lq7/a;->f:I

    add-int/2addr v4, v5

    iput v4, p0, Lq7/a;->f:I

    iput v8, p0, Lq7/a;->g:I

    :cond_4
    move v4, v8

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_6
    sub-int v3, v4, v2

    invoke-virtual {v1, v7, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lq7/a;->d:I

    invoke-virtual {p0, v5}, Lq7/a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lq7/a;->W(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq7/a;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq7/a;->d()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lq7/a;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lq7/a;->t(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lq7/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lq7/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lq7/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lq7/a;->d:I

    iget v2, p0, Lq7/a;->k:I

    iget-object v3, p0, Lq7/a;->c:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lq7/a;->d:I

    iget v2, p0, Lq7/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lq7/a;->d:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lq7/a;->h:I

    iget-object v1, p0, Lq7/a;->q:[I

    iget v2, p0, Lq7/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq7/a;->B()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/a;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq7/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lq7/a;->d:I

    add-int v4, v3, v2

    iget v5, p0, Lq7/a;->e:I

    iget-object v6, p0, Lq7/a;->c:[C

    if-ge v4, v5, :cond_2

    add-int/2addr v3, v2

    aget-char v3, v6, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lq7/a;->c()V

    goto :goto_1

    :cond_2
    array-length v3, v6

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lq7/a;->g(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget v3, p0, Lq7/a;->d:I

    invoke-virtual {v0, v6, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lq7/a;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lq7/a;->d:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lq7/a;->g(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lq7/a;->d:I

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget v2, p0, Lq7/a;->d:I

    invoke-virtual {v0, v6, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lq7/a;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lq7/a;->d:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
