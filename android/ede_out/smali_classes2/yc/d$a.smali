.class public final Lyc/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Led/d0;

.field public c:[Lyc/c;

.field public d:I

.field public e:I

.field public f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Lyc/q$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lyc/d$a;->g:I

    iput v0, p0, Lyc/d$a;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyc/d$a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Led/v;->b(Led/j0;)Led/d0;

    move-result-object p1

    iput-object p1, p0, Lyc/d$a;->b:Led/d0;

    const/16 p1, 0x8

    new-array p1, p1, [Lyc/c;

    iput-object p1, p0, Lyc/d$a;->c:[Lyc/c;

    const/4 p1, 0x7

    iput p1, p0, Lyc/d$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lyc/d$a;->c:[Lyc/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lyc/d$a;->d:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lyc/d$a;->c:[Lyc/c;

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v2, v2, Lyc/c;->a:I

    sub-int/2addr p1, v2

    iget v3, p0, Lyc/d$a;->f:I

    sub-int/2addr v3, v2

    iput v3, p0, Lyc/d$a;->f:I

    iget v2, p0, Lyc/d$a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lyc/d$a;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyc/d$a;->c:[Lyc/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lyc/d$a;->e:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lyc/d$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lyc/d$a;->d:I

    :cond_1
    return v0
.end method

.method public final b(I)Led/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Lyc/d;->a:[Lyc/c;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    sub-int/2addr v1, v0

    .line 8
    if-gt p1, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget-object v0, Lyc/d;->a:[Lyc/c;

    .line 16
    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget-object v1, Lyc/d;->a:[Lyc/c;

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    sub-int v1, p1, v1

    .line 24
    .line 25
    iget v2, p0, Lyc/d$a;->d:I

    .line 26
    .line 27
    add-int/2addr v2, v0

    .line 28
    add-int/2addr v2, v1

    .line 29
    if-ltz v2, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lyc/d$a;->c:[Lyc/c;

    .line 32
    .line 33
    array-length v3, v1

    .line 34
    if-ge v2, v3, :cond_2

    .line 35
    .line 36
    aget-object p1, v1, v2

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object p1, p1, Lyc/c;->b:Led/h;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Header index too large "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    add-int/2addr p1, v0

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public final c(Lyc/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lyc/d$a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lyc/d$a;->h:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget v2, p1, Lyc/c;->a:I

    .line 10
    .line 11
    if-le v2, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lyc/d$a;->c:[Lyc/c;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lm9/i;->m0([Ljava/lang/Object;Lkotlinx/coroutines/internal/u;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lyc/d$a;->c:[Lyc/c;

    .line 20
    .line 21
    array-length p1, p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Lyc/d$a;->d:I

    .line 25
    .line 26
    iput v1, p0, Lyc/d$a;->e:I

    .line 27
    .line 28
    iput v1, p0, Lyc/d$a;->f:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget v3, p0, Lyc/d$a;->f:I

    .line 32
    .line 33
    add-int/2addr v3, v2

    .line 34
    sub-int/2addr v3, v0

    .line 35
    invoke-virtual {p0, v3}, Lyc/d$a;->a(I)I

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lyc/d$a;->e:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iget-object v3, p0, Lyc/d$a;->c:[Lyc/c;

    .line 43
    .line 44
    array-length v4, v3

    .line 45
    if-le v0, v4, :cond_1

    .line 46
    .line 47
    array-length v0, v3

    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    new-array v0, v0, [Lyc/c;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    array-length v5, v3

    .line 54
    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lyc/d$a;->c:[Lyc/c;

    .line 58
    .line 59
    array-length v1, v1

    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    iput v1, p0, Lyc/d$a;->d:I

    .line 63
    .line 64
    iput-object v0, p0, Lyc/d$a;->c:[Lyc/c;

    .line 65
    .line 66
    :cond_1
    iget v0, p0, Lyc/d$a;->d:I

    .line 67
    .line 68
    add-int/lit8 v1, v0, -0x1

    .line 69
    .line 70
    iput v1, p0, Lyc/d$a;->d:I

    .line 71
    .line 72
    iget-object v1, p0, Lyc/d$a;->c:[Lyc/c;

    .line 73
    .line 74
    aput-object p1, v1, v0

    .line 75
    .line 76
    iget p1, p0, Lyc/d$a;->e:I

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    iput p1, p0, Lyc/d$a;->e:I

    .line 81
    .line 82
    iget p1, p0, Lyc/d$a;->f:I

    .line 83
    .line 84
    add-int/2addr p1, v2

    .line 85
    iput p1, p0, Lyc/d$a;->f:I

    .line 86
    .line 87
    return-void
.end method

.method public final d()Led/h;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyc/d$a;->b:Led/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Led/d0;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lsc/c;->a:[B

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    and-int/lit16 v2, v1, 0x80

    .line 12
    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/16 v3, 0x7f

    .line 22
    .line 23
    invoke-virtual {p0, v1, v3}, Lyc/d$a;->e(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-long v5, v1

    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    new-instance v1, Led/e;

    .line 31
    .line 32
    invoke-direct {v1}, Led/e;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lyc/t;->a:[I

    .line 36
    .line 37
    const-string v2, "source"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lyc/t;->c:Lyc/t$a;

    .line 43
    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    move-object v9, v2

    .line 47
    const/4 v3, 0x0

    .line 48
    :goto_1
    cmp-long v10, v7, v5

    .line 49
    .line 50
    if-gez v10, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Led/d0;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    sget-object v11, Lsc/c;->a:[B

    .line 57
    .line 58
    and-int/lit16 v10, v10, 0xff

    .line 59
    .line 60
    shl-int/lit8 v4, v4, 0x8

    .line 61
    .line 62
    or-int/2addr v4, v10

    .line 63
    add-int/lit8 v3, v3, 0x8

    .line 64
    .line 65
    :goto_2
    const/16 v10, 0x8

    .line 66
    .line 67
    if-lt v3, v10, :cond_2

    .line 68
    .line 69
    add-int/lit8 v10, v3, -0x8

    .line 70
    .line 71
    ushr-int v11, v4, v10

    .line 72
    .line 73
    and-int/lit16 v11, v11, 0xff

    .line 74
    .line 75
    iget-object v9, v9, Lyc/t$a;->a:[Lyc/t$a;

    .line 76
    .line 77
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    aget-object v9, v9, v11

    .line 81
    .line 82
    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v11, v9, Lyc/t$a;->a:[Lyc/t$a;

    .line 86
    .line 87
    if-nez v11, :cond_1

    .line 88
    .line 89
    iget v10, v9, Lyc/t$a;->b:I

    .line 90
    .line 91
    invoke-virtual {v1, v10}, Led/e;->O(I)V

    .line 92
    .line 93
    .line 94
    iget v9, v9, Lyc/t$a;->c:I

    .line 95
    .line 96
    sub-int/2addr v3, v9

    .line 97
    move-object v9, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    move v3, v10

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const-wide/16 v10, 0x1

    .line 102
    .line 103
    add-long/2addr v7, v10

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    :goto_3
    if-lez v3, :cond_5

    .line 106
    .line 107
    rsub-int/lit8 v0, v3, 0x8

    .line 108
    .line 109
    shl-int v0, v4, v0

    .line 110
    .line 111
    and-int/lit16 v0, v0, 0xff

    .line 112
    .line 113
    iget-object v5, v9, Lyc/t$a;->a:[Lyc/t$a;

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    aget-object v0, v5, v0

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v5, v0, Lyc/t$a;->a:[Lyc/t$a;

    .line 124
    .line 125
    if-nez v5, :cond_5

    .line 126
    .line 127
    iget v5, v0, Lyc/t$a;->c:I

    .line 128
    .line 129
    if-le v5, v3, :cond_4

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_4
    iget v0, v0, Lyc/t$a;->b:I

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Led/e;->O(I)V

    .line 135
    .line 136
    .line 137
    sub-int/2addr v3, v5

    .line 138
    move-object v9, v2

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    :goto_4
    invoke-virtual {v1}, Led/e;->n()Led/h;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    invoke-virtual {v0, v5, v6}, Led/d0;->z(J)Led/h;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_5
    return-object v0
.end method

.method public final e(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lyc/d$a;->b:Led/d0;

    invoke-virtual {v0}, Led/d0;->readByte()B

    move-result v0

    sget-object v1, Lsc/c;->a:[B

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
