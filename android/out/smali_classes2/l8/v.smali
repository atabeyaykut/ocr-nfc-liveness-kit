.class public final Ll8/v;
.super Ll8/u;
.source "SourceFile"


# static fields
.field public static final n:Led/h;

.field public static final p:Led/h;

.field public static final q:Led/h;

.field public static final r:Led/h;

.field public static final s:Led/h;


# instance fields
.field public final g:Led/g;

.field public final h:Led/e;

.field public j:I

.field public k:J

.field public l:I

.field public m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    const-string v0, "\'\\"

    .line 4
    .line 5
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ll8/v;->n:Led/h;

    .line 10
    .line 11
    const-string v0, "\"\\"

    .line 12
    .line 13
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Ll8/v;->p:Led/h;

    .line 18
    .line 19
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 20
    .line 21
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Ll8/v;->q:Led/h;

    .line 26
    .line 27
    const-string v0, "\n\r"

    .line 28
    .line 29
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Ll8/v;->r:Led/h;

    .line 34
    .line 35
    const-string v0, "*/"

    .line 36
    .line 37
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ll8/v;->s:Led/h;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Led/g;)V
    .locals 1

    invoke-direct {p0}, Ll8/u;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    iput-object p1, p0, Ll8/v;->g:Led/g;

    invoke-interface {p1}, Led/g;->getBuffer()Led/e;

    move-result-object p1

    iput-object p1, p0, Ll8/v;->h:Led/e;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Ll8/u;->m(I)V

    return-void
.end method

.method public constructor <init>(Ll8/v;)V
    .locals 3

    invoke-direct {p0, p1}, Ll8/u;-><init>(Ll8/u;)V

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    iget-object v0, p1, Ll8/v;->g:Led/g;

    invoke-interface {v0}, Led/g;->peek()Led/d0;

    move-result-object v0

    iput-object v0, p0, Ll8/v;->g:Led/g;

    .line 1
    iget-object v1, v0, Led/d0;->b:Led/e;

    .line 2
    iput-object v1, p0, Ll8/v;->h:Led/e;

    iget v1, p1, Ll8/v;->j:I

    iput v1, p0, Ll8/v;->j:I

    iget-wide v1, p1, Ll8/v;->k:J

    iput-wide v1, p0, Ll8/v;->k:J

    iget v1, p1, Ll8/v;->l:I

    iput v1, p0, Ll8/v;->l:I

    iget-object v1, p1, Ll8/v;->m:Ljava/lang/String;

    iput-object v1, p0, Ll8/v;->m:Ljava/lang/String;

    :try_start_0
    iget-object p1, p1, Ll8/v;->h:Led/e;

    .line 3
    iget-wide v1, p1, Led/e;->b:J

    .line 4
    invoke-virtual {v0, v1, v2}, Led/d0;->l0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ll8/v;->J()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Ll8/v;->p:Led/h;

    :goto_0
    invoke-virtual {p0, v0}, Ll8/v;->F(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Ll8/v;->n:Led/h;

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Ll8/v;->j:I

    iget-object v1, p0, Ll8/u;->c:[Ljava/lang/String;

    iget v2, p0, Ll8/u;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_4
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 4
    .line 5
    int-to-long v3, v2

    .line 6
    iget-object v5, p0, Ll8/v;->g:Led/g;

    .line 7
    .line 8
    invoke-interface {v5, v3, v4}, Led/g;->Y(J)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_a

    .line 13
    .line 14
    int-to-long v3, v1

    .line 15
    iget-object v1, p0, Ll8/v;->h:Led/e;

    .line 16
    .line 17
    invoke-virtual {v1, v3, v4}, Led/e;->f(J)B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-eq v3, v4, :cond_9

    .line 24
    .line 25
    const/16 v4, 0x20

    .line 26
    .line 27
    if-eq v3, v4, :cond_9

    .line 28
    .line 29
    const/16 v4, 0xd

    .line 30
    .line 31
    if-eq v3, v4, :cond_9

    .line 32
    .line 33
    const/16 v4, 0x9

    .line 34
    .line 35
    if-ne v3, v4, :cond_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    int-to-long v6, v2

    .line 41
    invoke-virtual {v1, v6, v7}, Led/e;->skip(J)V

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x2f

    .line 45
    .line 46
    if-ne v3, v2, :cond_7

    .line 47
    .line 48
    const-wide/16 v6, 0x2

    .line 49
    .line 50
    invoke-interface {v5, v6, v7}, Led/g;->Y(J)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    return v3

    .line 57
    :cond_1
    invoke-virtual {p0}, Ll8/v;->r()V

    .line 58
    .line 59
    .line 60
    const-wide/16 v6, 0x1

    .line 61
    .line 62
    invoke-virtual {v1, v6, v7}, Led/e;->f(J)B

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/16 v6, 0x2a

    .line 67
    .line 68
    if-eq v4, v6, :cond_3

    .line 69
    .line 70
    if-eq v4, v2, :cond_2

    .line 71
    .line 72
    return v3

    .line 73
    :cond_2
    invoke-virtual {v1}, Led/e;->readByte()B

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Led/e;->readByte()B

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v1}, Led/e;->readByte()B

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Led/e;->readByte()B

    .line 84
    .line 85
    .line 86
    sget-object v2, Ll8/v;->s:Led/h;

    .line 87
    .line 88
    invoke-interface {v5, v2}, Led/g;->j0(Led/h;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    const-wide/16 v5, -0x1

    .line 93
    .line 94
    cmp-long v7, v3, v5

    .line 95
    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    :cond_4
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v2, v2, Led/h;->a:[B

    .line 102
    .line 103
    array-length v2, v2

    .line 104
    int-to-long v5, v2

    .line 105
    add-long/2addr v3, v5

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iget-wide v3, v1, Led/e;->b:J

    .line 108
    .line 109
    :goto_2
    invoke-virtual {v1, v3, v4}, Led/e;->skip(J)V

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    const-string p1, "Unterminated comment"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    throw p1

    .line 122
    :cond_7
    const/16 v0, 0x23

    .line 123
    .line 124
    if-ne v3, v0, :cond_8

    .line 125
    .line 126
    invoke-virtual {p0}, Ll8/v;->r()V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {p0}, Ll8/v;->W()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_8
    return v3

    .line 135
    :cond_9
    :goto_4
    move v1, v2

    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_a
    if-nez p1, :cond_b

    .line 139
    .line 140
    const/4 p1, -0x1

    .line 141
    return p1

    .line 142
    :cond_b
    new-instance p1, Ljava/io/EOFException;

    .line 143
    .line 144
    const-string v0, "End of input"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public final F(Led/h;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Ll8/v;->g:Led/g;

    invoke-interface {v2, p1}, Led/g;->H(Led/h;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object v4, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v4, v2, v3}, Led/e;->f(J)B

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {v4, v2, v3}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Led/e;->readByte()B

    invoke-virtual {p0}, Ll8/v;->O()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2, v3}, Led/e;->s(J)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_2

    invoke-virtual {v4}, Led/e;->readByte()B

    return-object p1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Led/e;->readByte()B

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Ll8/u;->q(Ljava/lang/String;)V

    throw v0
.end method

.method public final J()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ll8/v;->q:Led/h;

    iget-object v1, p0, Ll8/v;->g:Led/g;

    invoke-interface {v1, v0}, Led/g;->H(Led/h;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    iget-object v4, p0, Ll8/v;->h:Led/e;

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Led/e;->r()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final O()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ll8/v;->g:Led/g;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Led/g;->Y(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v1}, Led/e;->readByte()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_c

    const/16 v5, 0x22

    if-eq v3, v5, :cond_c

    const/16 v5, 0x27

    if-eq v3, v5, :cond_c

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_c

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_c

    const/16 v5, 0x62

    if-eq v3, v5, :cond_b

    const/16 v5, 0x66

    if-eq v3, v5, :cond_a

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_9

    const/16 v6, 0x72

    if-eq v3, v6, :cond_8

    const/16 v6, 0x74

    if-eq v3, v6, :cond_7

    const/16 v6, 0x75

    if-eq v3, v6, :cond_1

    iget-boolean v0, p0, Ll8/u;->e:Z

    if-eqz v0, :cond_0

    int-to-char v0, v3

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll8/u;->q(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide/16 v6, 0x4

    invoke-interface {v0, v6, v7}, Led/g;->Y(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v0, v8, :cond_5

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Led/e;->f(J)B

    move-result v8

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    add-int/lit8 v8, v8, -0x30

    goto :goto_2

    :cond_2
    const/16 v9, 0x61

    if-lt v8, v9, :cond_3

    if-gt v8, v5, :cond_3

    add-int/lit8 v8, v8, -0x61

    goto :goto_1

    :cond_3
    const/16 v9, 0x41

    if-lt v8, v9, :cond_4

    const/16 v9, 0x46

    if-gt v8, v9, :cond_4

    add-int/lit8 v8, v8, -0x41

    :goto_1
    add-int/2addr v8, v4

    :goto_2
    add-int/2addr v8, v3

    int-to-char v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v6, v7}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll8/u;->q(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v1, v6, v7}, Led/e;->skip(J)V

    return v3

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xd

    return v0

    :cond_9
    return v4

    :cond_a
    const/16 v0, 0xc

    return v0

    :cond_b
    const/16 v0, 0x8

    return v0

    :cond_c
    int-to-char v0, v3

    return v0

    :cond_d
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Ll8/u;->q(Ljava/lang/String;)V

    throw v2
.end method

.method public final P(Led/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Ll8/v;->g:Led/g;

    invoke-interface {v0, p1}, Led/g;->H(Led/h;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v2, v0, v1}, Led/e;->f(J)B

    move-result v3

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Led/e;->skip(J)V

    const/16 v0, 0x5c

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->O()C

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Ll8/u;->q(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final W()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll8/v;->r:Led/h;

    .line 2
    .line 3
    iget-object v1, p0, Ll8/v;->g:Led/g;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Led/g;->H(Led/h;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    iget-object v4, p0, Ll8/v;->h:Led/e;

    .line 12
    .line 13
    cmp-long v5, v0, v2

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, v4, Led/e;->b:J

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v4, v0, v1}, Led/e;->skip(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll8/u;->m(I)V

    iget-object v1, p0, Ll8/u;->d:[I

    iget v2, p0, Ll8/u;->a:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Ll8/v;->j:I

    return-void

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ll8/u;->m(I)V

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    return-void

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Ll8/u;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ll8/u;->a:I

    iget-object v1, p0, Ll8/u;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    return-void

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    iget-object v1, p0, Ll8/u;->b:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Ll8/u;->a:I

    iget-object v0, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v0}, Led/e;->b()V

    iget-object v0, p0, Ll8/v;->g:Led/g;

    invoke-interface {v0}, Led/j0;->close()V

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Ll8/u;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ll8/u;->a:I

    iget-object v1, p0, Ll8/u;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Ll8/u;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    return-void

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Ll8/v;->j:I

    iget-object v0, p0, Ll8/u;->d:[I

    iget v1, p0, Ll8/u;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Ll8/v;->k:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    iget v0, p0, Ll8/v;->l:I

    int-to-long v0, v0

    iget-object v6, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v6, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    sget-object v0, Ll8/v;->p:Led/h;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sget-object v0, Ll8/v;->n:Led/h;

    :goto_0
    invoke-virtual {p0, v0}, Ll8/v;->F(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Ll8/v;->J()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_8

    :goto_2
    iput v4, p0, Ll8/v;->j:I

    :try_start_0
    iget-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v3, p0, Ll8/u;->e:Z

    if-nez v3, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ll8/s;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ll8/s;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Ll8/v;->m:Ljava/lang/String;

    iput v2, p0, Ll8/v;->j:I

    iget-object v2, p0, Ll8/u;->d:[I

    iget v3, p0, Ll8/u;->a:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    :catch_0
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Ll8/v;->k:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    iput v2, p0, Ll8/v;->j:I

    iget-object v0, p0, Ll8/u;->d:[I

    iget v1, p0, Ll8/u;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Ll8/v;->k:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    iget v0, p0, Ll8/v;->l:I

    int-to-long v0, v0

    iget-object v6, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v6, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    sget-object v0, Ll8/v;->p:Led/h;

    goto :goto_1

    :cond_7
    sget-object v0, Ll8/v;->n:Led/h;

    :goto_1
    invoke-virtual {p0, v0}, Ll8/v;->F(Led/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Ll8/v;->j:I

    iget-object v1, p0, Ll8/u;->d:[I

    iget v6, p0, Ll8/u;->a:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_2
    iput v5, p0, Ll8/v;->j:I

    :try_start_1
    iget-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    iput v2, p0, Ll8/v;->j:I

    iget-object v0, p0, Ll8/u;->d:[I

    iget v1, p0, Ll8/u;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_8
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ll8/v;->j:I

    iget-object v0, p0, Ll8/u;->d:[I

    iget v1, p0, Ll8/u;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ll8/v;->J()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    sget-object v0, Ll8/v;->p:Led/h;

    :goto_0
    invoke-virtual {p0, v0}, Ll8/v;->F(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    sget-object v0, Ll8/v;->n:Led/h;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ll8/v;->m:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Ll8/v;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    iget v0, p0, Ll8/v;->l:I

    int-to-long v0, v0

    iget-object v2, p0, Ll8/v;->h:Led/e;

    invoke-virtual {v2, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Ll8/v;->j:I

    iget-object v1, p0, Ll8/u;->d:[I

    iget v2, p0, Ll8/u;->a:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Ll8/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Ll8/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Ll8/u$b;->k:Ll8/u$b;

    return-object v0

    :pswitch_1
    sget-object v0, Ll8/u$b;->g:Ll8/u$b;

    return-object v0

    :pswitch_2
    sget-object v0, Ll8/u$b;->e:Ll8/u$b;

    return-object v0

    :pswitch_3
    sget-object v0, Ll8/u$b;->f:Ll8/u$b;

    return-object v0

    :pswitch_4
    sget-object v0, Ll8/u$b;->j:Ll8/u$b;

    return-object v0

    :pswitch_5
    sget-object v0, Ll8/u$b;->h:Ll8/u$b;

    return-object v0

    :pswitch_6
    sget-object v0, Ll8/u$b;->b:Ll8/u$b;

    return-object v0

    :pswitch_7
    sget-object v0, Ll8/u$b;->a:Ll8/u$b;

    return-object v0

    :pswitch_8
    sget-object v0, Ll8/u$b;->d:Ll8/u$b;

    return-object v0

    :pswitch_9
    sget-object v0, Ll8/u$b;->c:Ll8/u$b;

    return-object v0

    nop

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
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ll8/u$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ll8/v;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll8/v;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ll8/v;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ll8/v;->t(Ljava/lang/String;Ll8/u$a;)I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p1, Ll8/u$a;->b:Led/x;

    iget-object v3, p0, Ll8/v;->g:Led/g;

    invoke-interface {v3, v0}, Led/g;->h0(Led/x;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Ll8/v;->j:I

    iget-object v1, p0, Ll8/u;->c:[Ljava/lang/String;

    iget v2, p0, Ll8/u;->a:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Ll8/u$a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    :cond_3
    iget-object v0, p0, Ll8/u;->c:[Ljava/lang/String;

    iget v3, p0, Ll8/u;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Ll8/v;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Ll8/v;->t(Ljava/lang/String;Ll8/u$a;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iput v1, p0, Ll8/v;->j:I

    iput-object v3, p0, Ll8/v;->m:Ljava/lang/String;

    iget-object v1, p0, Ll8/u;->c:[Ljava/lang/String;

    iget v2, p0, Ll8/u;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final o()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll8/u;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Ll8/v;->j:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ll8/v;->s()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :cond_0
    const/16 v1, 0xe

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    sget-object v0, Ll8/v;->q:Led/h;

    .line 18
    .line 19
    iget-object v1, p0, Ll8/v;->g:Led/g;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Led/g;->H(Led/h;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    iget-object v4, p0, Ll8/v;->h:Led/e;

    .line 28
    .line 29
    cmp-long v5, v0, v2

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-wide v0, v4, Led/e;->b:J

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v4, v0, v1}, Led/e;->skip(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0xd

    .line 41
    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    sget-object v0, Ll8/v;->p:Led/h;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/16 v1, 0xc

    .line 48
    .line 49
    if-ne v0, v1, :cond_4

    .line 50
    .line 51
    sget-object v0, Ll8/v;->n:Led/h;

    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0, v0}, Ll8/v;->P(Led/h;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v1, 0xf

    .line 58
    .line 59
    if-ne v0, v1, :cond_5

    .line 60
    .line 61
    :goto_2
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Ll8/v;->j:I

    .line 63
    .line 64
    iget-object v0, p0, Ll8/u;->c:[Ljava/lang/String;

    .line 65
    .line 66
    iget v1, p0, Ll8/u;->a:I

    .line 67
    .line 68
    add-int/lit8 v1, v1, -0x1

    .line 69
    .line 70
    const-string v2, "null"

    .line 71
    .line 72
    aput-object v2, v0, v1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    new-instance v0, Ll8/r;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Expected a name but was "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " at path "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_6
    new-instance v0, Ll8/r;

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Cannot skip unexpected "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, " at "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public final p()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll8/u;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    iget v2, p0, Ll8/v;->j:I

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ll8/v;->s()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :cond_1
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x3

    .line 17
    if-ne v2, v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ll8/u;->m(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-ne v2, v3, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Ll8/u;->m(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_7

    .line 31
    :cond_3
    const/4 v4, 0x4

    .line 32
    if-ne v2, v4, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    const/4 v4, 0x2

    .line 36
    if-ne v2, v4, :cond_5

    .line 37
    .line 38
    :goto_1
    iget v2, p0, Ll8/u;->a:I

    .line 39
    .line 40
    sub-int/2addr v2, v3

    .line 41
    iput v2, p0, Ll8/u;->a:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_7

    .line 46
    :cond_5
    const/16 v4, 0xe

    .line 47
    .line 48
    iget-object v5, p0, Ll8/v;->h:Led/e;

    .line 49
    .line 50
    if-eq v2, v4, :cond_b

    .line 51
    .line 52
    const/16 v4, 0xa

    .line 53
    .line 54
    if-ne v2, v4, :cond_6

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_6
    const/16 v4, 0x9

    .line 58
    .line 59
    if-eq v2, v4, :cond_a

    .line 60
    .line 61
    const/16 v4, 0xd

    .line 62
    .line 63
    if-ne v2, v4, :cond_7

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_7
    const/16 v4, 0x8

    .line 67
    .line 68
    if-eq v2, v4, :cond_9

    .line 69
    .line 70
    const/16 v4, 0xc

    .line 71
    .line 72
    if-ne v2, v4, :cond_8

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_8
    const/16 v4, 0x11

    .line 76
    .line 77
    if-ne v2, v4, :cond_d

    .line 78
    .line 79
    iget v2, p0, Ll8/v;->l:I

    .line 80
    .line 81
    int-to-long v6, v2

    .line 82
    invoke-virtual {v5, v6, v7}, Led/e;->skip(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_7

    .line 86
    :cond_9
    :goto_2
    sget-object v2, Ll8/v;->n:Led/h;

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_a
    :goto_3
    sget-object v2, Ll8/v;->p:Led/h;

    .line 90
    .line 91
    :goto_4
    invoke-virtual {p0, v2}, Ll8/v;->P(Led/h;)V

    .line 92
    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_b
    :goto_5
    sget-object v2, Ll8/v;->q:Led/h;

    .line 96
    .line 97
    iget-object v4, p0, Ll8/v;->g:Led/g;

    .line 98
    .line 99
    invoke-interface {v4, v2}, Led/g;->H(Led/h;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    const-wide/16 v8, -0x1

    .line 104
    .line 105
    cmp-long v2, v6, v8

    .line 106
    .line 107
    if-eqz v2, :cond_c

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_c
    iget-wide v6, v5, Led/e;->b:J

    .line 111
    .line 112
    :goto_6
    invoke-virtual {v5, v6, v7}, Led/e;->skip(J)V

    .line 113
    .line 114
    .line 115
    :cond_d
    :goto_7
    iput v0, p0, Ll8/v;->j:I

    .line 116
    .line 117
    if-nez v1, :cond_0

    .line 118
    .line 119
    iget-object v0, p0, Ll8/u;->d:[I

    .line 120
    .line 121
    iget v1, p0, Ll8/u;->a:I

    .line 122
    .line 123
    add-int/lit8 v2, v1, -0x1

    .line 124
    .line 125
    aget v4, v0, v2

    .line 126
    .line 127
    add-int/2addr v4, v3

    .line 128
    aput v4, v0, v2

    .line 129
    .line 130
    iget-object v0, p0, Ll8/u;->c:[Ljava/lang/String;

    .line 131
    .line 132
    sub-int/2addr v1, v3

    .line 133
    const-string v2, "null"

    .line 134
    .line 135
    aput-object v2, v0, v1

    .line 136
    .line 137
    return-void

    .line 138
    :cond_e
    new-instance v0, Ll8/r;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Cannot skip unexpected "

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ll8/v;->k()Ll8/u$b;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v2, " at "

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ll8/u;->getPath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public final r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ll8/u;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Ll8/u;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ll8/u;->b:[I

    .line 4
    .line 5
    iget v2, v0, Ll8/u;->a:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, -0x1

    .line 8
    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/16 v11, 0x5d

    .line 13
    .line 14
    iget-object v12, v0, Ll8/v;->g:Led/g;

    .line 15
    .line 16
    const/16 v13, 0x3b

    .line 17
    .line 18
    const/16 v14, 0x2c

    .line 19
    .line 20
    const/4 v15, 0x3

    .line 21
    const/4 v4, 0x5

    .line 22
    const/4 v9, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    iget-object v7, v0, Ll8/v;->h:Led/e;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ne v3, v5, :cond_1

    .line 28
    .line 29
    sub-int/2addr v2, v5

    .line 30
    aput v8, v1, v2

    .line 31
    .line 32
    :cond_0
    :goto_0
    const/4 v6, 0x7

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-ne v3, v8, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ll8/v;->E(Z)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 41
    .line 42
    .line 43
    if-eq v1, v14, :cond_0

    .line 44
    .line 45
    if-eq v1, v13, :cond_3

    .line 46
    .line 47
    if-ne v1, v11, :cond_2

    .line 48
    .line 49
    iput v9, v0, Ll8/v;->j:I

    .line 50
    .line 51
    return v9

    .line 52
    :cond_2
    const-string v1, "Unterminated array"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v10

    .line 58
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    if-eq v3, v15, :cond_3a

    .line 63
    .line 64
    if-ne v3, v4, :cond_5

    .line 65
    .line 66
    goto/16 :goto_19

    .line 67
    .line 68
    :cond_5
    if-ne v3, v9, :cond_7

    .line 69
    .line 70
    sub-int/2addr v2, v5

    .line 71
    aput v4, v1, v2

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ll8/v;->E(Z)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x3a

    .line 81
    .line 82
    if-eq v1, v2, :cond_0

    .line 83
    .line 84
    const/16 v2, 0x3d

    .line 85
    .line 86
    if-ne v1, v2, :cond_6

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 89
    .line 90
    .line 91
    const-wide/16 v1, 0x1

    .line 92
    .line 93
    invoke-interface {v12, v1, v2}, Led/g;->Y(J)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    const-wide/16 v1, 0x0

    .line 100
    .line 101
    invoke-virtual {v7, v1, v2}, Led/e;->f(J)B

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/16 v1, 0x3e

    .line 106
    .line 107
    if-ne v6, v1, :cond_0

    .line 108
    .line 109
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    const-string v1, "Expected \':\'"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v10

    .line 119
    :cond_7
    const/4 v6, 0x6

    .line 120
    if-ne v3, v6, :cond_8

    .line 121
    .line 122
    sub-int/2addr v2, v5

    .line 123
    const/4 v6, 0x7

    .line 124
    aput v6, v1, v2

    .line 125
    .line 126
    :goto_1
    const/4 v1, 0x0

    .line 127
    :goto_2
    const/16 v2, 0x8

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    const/4 v6, 0x7

    .line 131
    const/4 v1, 0x0

    .line 132
    if-ne v3, v6, :cond_a

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ll8/v;->E(Z)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/4 v6, -0x1

    .line 139
    if-ne v2, v6, :cond_9

    .line 140
    .line 141
    const/16 v4, 0x12

    .line 142
    .line 143
    goto/16 :goto_1a

    .line 144
    .line 145
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    const/16 v2, 0x8

    .line 150
    .line 151
    if-eq v3, v2, :cond_39

    .line 152
    .line 153
    :goto_3
    invoke-virtual {v0, v5}, Ll8/v;->E(Z)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    const/16 v1, 0x22

    .line 158
    .line 159
    if-eq v6, v1, :cond_38

    .line 160
    .line 161
    const/16 v1, 0x27

    .line 162
    .line 163
    if-eq v6, v1, :cond_37

    .line 164
    .line 165
    if-eq v6, v14, :cond_33

    .line 166
    .line 167
    if-eq v6, v13, :cond_33

    .line 168
    .line 169
    const/16 v1, 0x5b

    .line 170
    .line 171
    if-eq v6, v1, :cond_32

    .line 172
    .line 173
    if-eq v6, v11, :cond_31

    .line 174
    .line 175
    const/16 v1, 0x7b

    .line 176
    .line 177
    if-eq v6, v1, :cond_30

    .line 178
    .line 179
    const-wide/16 v1, 0x0

    .line 180
    .line 181
    invoke-virtual {v7, v1, v2}, Led/e;->f(J)B

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    const/16 v1, 0x74

    .line 186
    .line 187
    if-eq v3, v1, :cond_f

    .line 188
    .line 189
    const/16 v1, 0x54

    .line 190
    .line 191
    if-ne v3, v1, :cond_b

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_b
    const/16 v1, 0x66

    .line 195
    .line 196
    if-eq v3, v1, :cond_e

    .line 197
    .line 198
    const/16 v1, 0x46

    .line 199
    .line 200
    if-ne v3, v1, :cond_c

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    const/16 v1, 0x6e

    .line 204
    .line 205
    if-eq v3, v1, :cond_d

    .line 206
    .line 207
    const/16 v1, 0x4e

    .line 208
    .line 209
    if-ne v3, v1, :cond_13

    .line 210
    .line 211
    :cond_d
    const-string v1, "null"

    .line 212
    .line 213
    const-string v2, "NULL"

    .line 214
    .line 215
    const/4 v6, 0x7

    .line 216
    goto :goto_6

    .line 217
    :cond_e
    :goto_4
    const-string v1, "false"

    .line 218
    .line 219
    const-string v2, "FALSE"

    .line 220
    .line 221
    const/4 v6, 0x6

    .line 222
    goto :goto_6

    .line 223
    :cond_f
    :goto_5
    const-string v1, "true"

    .line 224
    .line 225
    const-string v2, "TRUE"

    .line 226
    .line 227
    const/4 v6, 0x5

    .line 228
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    const/4 v11, 0x1

    .line 233
    :goto_7
    if-ge v11, v3, :cond_12

    .line 234
    .line 235
    add-int/lit8 v13, v11, 0x1

    .line 236
    .line 237
    int-to-long v9, v13

    .line 238
    invoke-interface {v12, v9, v10}, Led/g;->Y(J)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-nez v9, :cond_10

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_10
    int-to-long v9, v11

    .line 246
    invoke-virtual {v7, v9, v10}, Led/e;->f(J)B

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eq v9, v10, :cond_11

    .line 255
    .line 256
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-eq v9, v10, :cond_11

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_11
    move v11, v13

    .line 264
    const/4 v9, 0x4

    .line 265
    const/4 v10, 0x0

    .line 266
    goto :goto_7

    .line 267
    :cond_12
    add-int/lit8 v1, v3, 0x1

    .line 268
    .line 269
    int-to-long v1, v1

    .line 270
    invoke-interface {v12, v1, v2}, Led/g;->Y(J)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_14

    .line 275
    .line 276
    int-to-long v1, v3

    .line 277
    invoke-virtual {v7, v1, v2}, Led/e;->f(J)B

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-virtual {v0, v1}, Ll8/v;->y(I)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_14

    .line 286
    .line 287
    :cond_13
    :goto_8
    const/4 v6, 0x0

    .line 288
    goto :goto_9

    .line 289
    :cond_14
    int-to-long v1, v3

    .line 290
    invoke-virtual {v7, v1, v2}, Led/e;->skip(J)V

    .line 291
    .line 292
    .line 293
    iput v6, v0, Ll8/v;->j:I

    .line 294
    .line 295
    :goto_9
    if-eqz v6, :cond_15

    .line 296
    .line 297
    return v6

    .line 298
    :cond_15
    const-wide/16 v1, 0x0

    .line 299
    .line 300
    const/4 v3, 0x0

    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v9, 0x0

    .line 303
    const/4 v10, 0x1

    .line 304
    :goto_a
    add-int/lit8 v11, v3, 0x1

    .line 305
    .line 306
    int-to-long v13, v11

    .line 307
    invoke-interface {v12, v13, v14}, Led/g;->Y(J)Z

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    if-nez v13, :cond_16

    .line 312
    .line 313
    goto/16 :goto_11

    .line 314
    .line 315
    :cond_16
    int-to-long v13, v3

    .line 316
    invoke-virtual {v7, v13, v14}, Led/e;->f(J)B

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    const/16 v14, 0x2b

    .line 321
    .line 322
    if-eq v13, v14, :cond_2c

    .line 323
    .line 324
    const/16 v14, 0x45

    .line 325
    .line 326
    if-eq v13, v14, :cond_2a

    .line 327
    .line 328
    const/16 v14, 0x65

    .line 329
    .line 330
    if-eq v13, v14, :cond_2a

    .line 331
    .line 332
    const/16 v14, 0x2d

    .line 333
    .line 334
    if-eq v13, v14, :cond_28

    .line 335
    .line 336
    const/16 v14, 0x2e

    .line 337
    .line 338
    if-eq v13, v14, :cond_27

    .line 339
    .line 340
    const/16 v14, 0x30

    .line 341
    .line 342
    if-lt v13, v14, :cond_21

    .line 343
    .line 344
    const/16 v14, 0x39

    .line 345
    .line 346
    if-le v13, v14, :cond_17

    .line 347
    .line 348
    goto :goto_10

    .line 349
    :cond_17
    if-eq v6, v5, :cond_1f

    .line 350
    .line 351
    if-nez v6, :cond_18

    .line 352
    .line 353
    goto :goto_e

    .line 354
    :cond_18
    if-ne v6, v8, :cond_1c

    .line 355
    .line 356
    const-wide/16 v16, 0x0

    .line 357
    .line 358
    cmp-long v3, v1, v16

    .line 359
    .line 360
    if-nez v3, :cond_19

    .line 361
    .line 362
    goto/16 :goto_16

    .line 363
    .line 364
    :cond_19
    const-wide/16 v16, 0xa

    .line 365
    .line 366
    mul-long v16, v16, v1

    .line 367
    .line 368
    add-int/lit8 v13, v13, -0x30

    .line 369
    .line 370
    int-to-long v13, v13

    .line 371
    sub-long v16, v16, v13

    .line 372
    .line 373
    const-wide v13, -0xcccccccccccccccL

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    cmp-long v3, v1, v13

    .line 379
    .line 380
    if-gtz v3, :cond_1b

    .line 381
    .line 382
    if-nez v3, :cond_1a

    .line 383
    .line 384
    cmp-long v3, v16, v1

    .line 385
    .line 386
    if-gez v3, :cond_1a

    .line 387
    .line 388
    goto :goto_b

    .line 389
    :cond_1a
    const/4 v1, 0x0

    .line 390
    goto :goto_c

    .line 391
    :cond_1b
    :goto_b
    const/4 v1, 0x1

    .line 392
    :goto_c
    and-int/2addr v1, v10

    .line 393
    move v10, v1

    .line 394
    move-wide/from16 v1, v16

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_1c
    if-ne v6, v15, :cond_1d

    .line 398
    .line 399
    const/4 v6, 0x4

    .line 400
    :goto_d
    const/4 v13, 0x7

    .line 401
    const/4 v14, 0x6

    .line 402
    goto/16 :goto_15

    .line 403
    .line 404
    :cond_1d
    const/4 v14, 0x6

    .line 405
    if-eq v6, v4, :cond_1e

    .line 406
    .line 407
    if-ne v6, v14, :cond_20

    .line 408
    .line 409
    :cond_1e
    const/4 v6, 0x7

    .line 410
    goto :goto_f

    .line 411
    :cond_1f
    :goto_e
    const/4 v14, 0x6

    .line 412
    add-int/lit8 v13, v13, -0x30

    .line 413
    .line 414
    neg-int v1, v13

    .line 415
    int-to-long v1, v1

    .line 416
    const/4 v6, 0x2

    .line 417
    :cond_20
    :goto_f
    const/4 v13, 0x7

    .line 418
    goto :goto_15

    .line 419
    :cond_21
    :goto_10
    invoke-virtual {v0, v13}, Ll8/v;->y(I)Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-nez v4, :cond_2d

    .line 424
    .line 425
    :goto_11
    if-ne v6, v8, :cond_25

    .line 426
    .line 427
    if-eqz v10, :cond_25

    .line 428
    .line 429
    const-wide/high16 v4, -0x8000000000000000L

    .line 430
    .line 431
    cmp-long v10, v1, v4

    .line 432
    .line 433
    if-nez v10, :cond_22

    .line 434
    .line 435
    if-eqz v9, :cond_25

    .line 436
    .line 437
    :cond_22
    const-wide/16 v4, 0x0

    .line 438
    .line 439
    cmp-long v10, v1, v4

    .line 440
    .line 441
    if-nez v10, :cond_23

    .line 442
    .line 443
    if-nez v9, :cond_25

    .line 444
    .line 445
    :cond_23
    if-eqz v9, :cond_24

    .line 446
    .line 447
    goto :goto_12

    .line 448
    :cond_24
    neg-long v1, v1

    .line 449
    :goto_12
    iput-wide v1, v0, Ll8/v;->k:J

    .line 450
    .line 451
    int-to-long v1, v3

    .line 452
    invoke-virtual {v7, v1, v2}, Led/e;->skip(J)V

    .line 453
    .line 454
    .line 455
    const/16 v1, 0x10

    .line 456
    .line 457
    const/16 v9, 0x10

    .line 458
    .line 459
    goto :goto_13

    .line 460
    :cond_25
    if-eq v6, v8, :cond_26

    .line 461
    .line 462
    const/4 v1, 0x4

    .line 463
    if-eq v6, v1, :cond_26

    .line 464
    .line 465
    const/4 v13, 0x7

    .line 466
    if-ne v6, v13, :cond_2d

    .line 467
    .line 468
    :cond_26
    iput v3, v0, Ll8/v;->l:I

    .line 469
    .line 470
    const/16 v1, 0x11

    .line 471
    .line 472
    const/16 v9, 0x11

    .line 473
    .line 474
    :goto_13
    iput v9, v0, Ll8/v;->j:I

    .line 475
    .line 476
    goto :goto_17

    .line 477
    :cond_27
    const/4 v13, 0x7

    .line 478
    const/4 v14, 0x6

    .line 479
    if-ne v6, v8, :cond_2d

    .line 480
    .line 481
    const/4 v6, 0x3

    .line 482
    goto :goto_15

    .line 483
    :cond_28
    const/4 v13, 0x7

    .line 484
    const/4 v14, 0x6

    .line 485
    if-nez v6, :cond_29

    .line 486
    .line 487
    const/4 v6, 0x1

    .line 488
    const/4 v9, 0x1

    .line 489
    goto :goto_15

    .line 490
    :cond_29
    if-ne v6, v4, :cond_2d

    .line 491
    .line 492
    goto :goto_14

    .line 493
    :cond_2a
    const/4 v13, 0x7

    .line 494
    const/4 v14, 0x6

    .line 495
    if-eq v6, v8, :cond_2b

    .line 496
    .line 497
    const/4 v3, 0x4

    .line 498
    if-ne v6, v3, :cond_2d

    .line 499
    .line 500
    :cond_2b
    const/4 v6, 0x5

    .line 501
    goto :goto_15

    .line 502
    :cond_2c
    const/4 v13, 0x7

    .line 503
    const/4 v14, 0x6

    .line 504
    if-ne v6, v4, :cond_2d

    .line 505
    .line 506
    :goto_14
    const/4 v6, 0x6

    .line 507
    :goto_15
    move v3, v11

    .line 508
    goto/16 :goto_a

    .line 509
    .line 510
    :cond_2d
    :goto_16
    const/4 v9, 0x0

    .line 511
    :goto_17
    if-eqz v9, :cond_2e

    .line 512
    .line 513
    return v9

    .line 514
    :cond_2e
    const-wide/16 v1, 0x0

    .line 515
    .line 516
    invoke-virtual {v7, v1, v2}, Led/e;->f(J)B

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    invoke-virtual {v0, v1}, Ll8/v;->y(I)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-eqz v1, :cond_2f

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 527
    .line 528
    .line 529
    const/16 v4, 0xa

    .line 530
    .line 531
    goto/16 :goto_1a

    .line 532
    .line 533
    :cond_2f
    const-string v1, "Expected value"

    .line 534
    .line 535
    invoke-virtual {v0, v1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const/4 v1, 0x0

    .line 539
    throw v1

    .line 540
    :cond_30
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 541
    .line 542
    .line 543
    iput v5, v0, Ll8/v;->j:I

    .line 544
    .line 545
    return v5

    .line 546
    :cond_31
    const/4 v13, 0x7

    .line 547
    if-ne v3, v5, :cond_34

    .line 548
    .line 549
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 550
    .line 551
    .line 552
    const/4 v4, 0x4

    .line 553
    goto/16 :goto_1a

    .line 554
    .line 555
    :cond_32
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 556
    .line 557
    .line 558
    iput v15, v0, Ll8/v;->j:I

    .line 559
    .line 560
    return v15

    .line 561
    :cond_33
    const/4 v13, 0x7

    .line 562
    :cond_34
    if-eq v3, v5, :cond_36

    .line 563
    .line 564
    if-ne v3, v8, :cond_35

    .line 565
    .line 566
    goto :goto_18

    .line 567
    :cond_35
    const-string v1, "Unexpected value"

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    const/4 v1, 0x0

    .line 573
    throw v1

    .line 574
    :cond_36
    :goto_18
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 575
    .line 576
    .line 577
    const/4 v4, 0x7

    .line 578
    goto/16 :goto_1a

    .line 579
    .line 580
    :cond_37
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 584
    .line 585
    .line 586
    const/16 v4, 0x8

    .line 587
    .line 588
    goto :goto_1a

    .line 589
    :cond_38
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 590
    .line 591
    .line 592
    const/16 v4, 0x9

    .line 593
    .line 594
    goto :goto_1a

    .line 595
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 596
    .line 597
    const-string v2, "JsonReader is closed"

    .line 598
    .line 599
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    throw v1

    .line 603
    :cond_3a
    :goto_19
    sub-int/2addr v2, v5

    .line 604
    const/4 v6, 0x4

    .line 605
    aput v6, v1, v2

    .line 606
    .line 607
    const/16 v1, 0x7d

    .line 608
    .line 609
    if-ne v3, v4, :cond_3d

    .line 610
    .line 611
    invoke-virtual {v0, v5}, Ll8/v;->E(Z)I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 616
    .line 617
    .line 618
    if-eq v2, v14, :cond_3d

    .line 619
    .line 620
    if-eq v2, v13, :cond_3c

    .line 621
    .line 622
    if-ne v2, v1, :cond_3b

    .line 623
    .line 624
    iput v8, v0, Ll8/v;->j:I

    .line 625
    .line 626
    return v8

    .line 627
    :cond_3b
    const-string v1, "Unterminated object"

    .line 628
    .line 629
    invoke-virtual {v0, v1}, Ll8/u;->q(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/4 v1, 0x0

    .line 633
    throw v1

    .line 634
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 635
    .line 636
    .line 637
    :cond_3d
    invoke-virtual {v0, v5}, Ll8/v;->E(Z)I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    const/16 v5, 0x22

    .line 642
    .line 643
    if-eq v2, v5, :cond_42

    .line 644
    .line 645
    const/16 v5, 0x27

    .line 646
    .line 647
    if-eq v2, v5, :cond_41

    .line 648
    .line 649
    const-string v5, "Expected name"

    .line 650
    .line 651
    if-eq v2, v1, :cond_3f

    .line 652
    .line 653
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 654
    .line 655
    .line 656
    int-to-char v1, v2

    .line 657
    invoke-virtual {v0, v1}, Ll8/v;->y(I)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-eqz v1, :cond_3e

    .line 662
    .line 663
    const/16 v4, 0xe

    .line 664
    .line 665
    goto :goto_1a

    .line 666
    :cond_3e
    invoke-virtual {v0, v5}, Ll8/u;->q(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    const/4 v1, 0x0

    .line 670
    throw v1

    .line 671
    :cond_3f
    const/4 v1, 0x0

    .line 672
    if-eq v3, v4, :cond_40

    .line 673
    .line 674
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 675
    .line 676
    .line 677
    iput v8, v0, Ll8/v;->j:I

    .line 678
    .line 679
    return v8

    .line 680
    :cond_40
    invoke-virtual {v0, v5}, Ll8/u;->q(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    throw v1

    .line 684
    :cond_41
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 685
    .line 686
    .line 687
    invoke-virtual/range {p0 .. p0}, Ll8/v;->r()V

    .line 688
    .line 689
    .line 690
    const/16 v4, 0xc

    .line 691
    .line 692
    goto :goto_1a

    .line 693
    :cond_42
    invoke-virtual {v7}, Led/e;->readByte()B

    .line 694
    .line 695
    .line 696
    const/16 v4, 0xd

    .line 697
    .line 698
    :goto_1a
    iput v4, v0, Ll8/v;->j:I

    .line 699
    .line 700
    return v4
.end method

.method public final t(Ljava/lang/String;Ll8/u$a;)I
    .locals 4

    iget-object v0, p2, Ll8/u$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p2, Ll8/u$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Ll8/v;->j:I

    iget-object p2, p0, Ll8/u;->c:[Ljava/lang/String;

    iget v0, p0, Ll8/u;->a:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll8/v;->g:Led/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/String;Ll8/u$a;)I
    .locals 4

    iget-object v0, p2, Ll8/u$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p2, Ll8/u$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Ll8/v;->j:I

    iget-object p1, p0, Ll8/u;->d:[I

    iget p2, p0, Ll8/u;->a:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final y(I)Z
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
    invoke-virtual {p0}, Ll8/v;->r()V

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
