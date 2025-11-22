.class public abstract Lp4/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lp4/l0;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lp4/h0;->a:I

    .line 1
    iput-object p1, p0, Lp4/h0;->e:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v1, p1, Lp4/l0;->e:I

    .line 3
    iput v1, p0, Lp4/h0;->b:I

    .line 4
    invoke-virtual {p1}, Lp4/l0;->isEmpty()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 5
    :cond_0
    iput v0, p0, Lp4/h0;->c:I

    iput v1, p0, Lp4/h0;->d:I

    return-void
.end method

.method public constructor <init>(Ls4/x;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp4/h0;->a:I

    .line 6
    iput-object p1, p0, Lp4/h0;->e:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Ls4/x;->e:I

    .line 8
    iput v0, p0, Lp4/h0;->b:I

    .line 9
    invoke-virtual {p1}, Ls4/x;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput p1, p0, Lp4/h0;->c:I

    iput v0, p0, Lp4/h0;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/h0;->e:Ljava/util/AbstractMap;

    .line 2
    .line 3
    iget v1, p0, Lp4/h0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v0, Lp4/l0;

    .line 10
    .line 11
    iget v0, v0, Lp4/l0;->e:I

    .line 12
    .line 13
    iget v1, p0, Lp4/h0;->b:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :goto_0
    check-cast v0, Ls4/x;

    .line 25
    .line 26
    iget v0, v0, Ls4/x;->e:I

    .line 27
    .line 28
    iget v1, p0, Lp4/h0;->b:I

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lp4/h0;->a:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget v1, p0, Lp4/h0;->c:I

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    return v0

    .line 15
    :goto_0
    iget v1, p0, Lp4/h0;->c:I

    .line 16
    .line 17
    if-ltz v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    return v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/h0;->e:Ljava/util/AbstractMap;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget v2, p0, Lp4/h0;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lp4/h0;->b()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lp4/h0;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lp4/h0;->c:I

    .line 20
    .line 21
    iput v2, p0, Lp4/h0;->d:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lp4/h0;->a(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v0, Lp4/l0;

    .line 28
    .line 29
    iget v3, p0, Lp4/h0;->c:I

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    iget v0, v0, Lp4/l0;->f:I

    .line 34
    .line 35
    if-ge v3, v0, :cond_0

    .line 36
    .line 37
    move v1, v3

    .line 38
    :cond_0
    iput v1, p0, Lp4/h0;->c:I

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lp4/h0;->b()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lp4/h0;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget v2, p0, Lp4/h0;->c:I

    .line 57
    .line 58
    iput v2, p0, Lp4/h0;->d:I

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lp4/h0;->a(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v0, Ls4/x;

    .line 65
    .line 66
    iget v3, p0, Lp4/h0;->c:I

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    iget v0, v0, Ls4/x;->f:I

    .line 71
    .line 72
    if-ge v3, v0, :cond_2

    .line 73
    .line 74
    move v1, v3

    .line 75
    :cond_2
    iput v1, p0, Lp4/h0;->c:I

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp4/h0;->e:Ljava/util/AbstractMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lp4/h0;->a:I

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    const-string v4, "no calls to next() since the last call to remove()"

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lp4/h0;->b()V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lp4/h0;->d:I

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lp4/h0;->b:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x20

    .line 27
    .line 28
    iput v1, p0, Lp4/h0;->b:I

    .line 29
    .line 30
    check-cast v0, Lp4/l0;

    .line 31
    .line 32
    iget-object v1, v0, Lp4/l0;->c:[Ljava/lang/Object;

    .line 33
    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lp4/l0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lp4/h0;->c:I

    .line 40
    .line 41
    add-int/2addr v0, v3

    .line 42
    iput v0, p0, Lp4/h0;->c:I

    .line 43
    .line 44
    iput v3, p0, Lp4/h0;->d:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lp4/h0;->b()V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lp4/h0;->d:I

    .line 57
    .line 58
    if-ltz v2, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget v1, p0, Lp4/h0;->b:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x20

    .line 66
    .line 67
    iput v1, p0, Lp4/h0;->b:I

    .line 68
    .line 69
    check-cast v0, Ls4/x;

    .line 70
    .line 71
    iget-object v1, v0, Ls4/x;->c:[Ljava/lang/Object;

    .line 72
    .line 73
    aget-object v1, v1, v2

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ls4/x;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lp4/h0;->c:I

    .line 79
    .line 80
    add-int/2addr v0, v3

    .line 81
    iput v0, p0, Lp4/h0;->c:I

    .line 82
    .line 83
    iput v3, p0, Lp4/h0;->d:I

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
