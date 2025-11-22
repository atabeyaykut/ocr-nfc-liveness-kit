.class public final Lg0/d;
.super Lg0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/f<",
        "Lk0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lk0/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/a<",
            "Lk0/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg0/f;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lq0/a;

    .line 10
    .line 11
    iget-object p1, p1, Lq0/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lk0/c;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Lk0/c;->b:[I

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    :goto_0
    new-instance p1, Lk0/c;

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    invoke-direct {p1, v1, v0}, Lk0/c;-><init>([F[I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lg0/d;->i:Lk0/c;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p1, Lq0/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk0/c;

    .line 4
    .line 5
    iget-object p1, p1, Lq0/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lk0/c;

    .line 8
    .line 9
    iget-object v1, p0, Lg0/d;->i:Lk0/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lk0/c;->b:[I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    iget-object v4, p1, Lk0/c;->b:[I

    .line 18
    .line 19
    array-length v5, v4

    .line 20
    if-ne v3, v5, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    array-length v5, v2

    .line 24
    if-ge v3, v5, :cond_0

    .line 25
    .line 26
    iget-object v5, v0, Lk0/c;->a:[F

    .line 27
    .line 28
    aget v5, v5, v3

    .line 29
    .line 30
    iget-object v6, p1, Lk0/c;->a:[F

    .line 31
    .line 32
    aget v6, v6, v3

    .line 33
    .line 34
    sget-object v7, Lp0/f;->a:Landroid/graphics/PointF;

    .line 35
    .line 36
    invoke-static {v6, v5, p2, v5}, Landroidx/appcompat/graphics/drawable/a;->d(FFFF)F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget-object v6, v1, Lk0/c;->a:[F

    .line 41
    .line 42
    aput v5, v6, v3

    .line 43
    .line 44
    aget v5, v2, v3

    .line 45
    .line 46
    aget v6, v4, v3

    .line 47
    .line 48
    invoke-static {p2, v5, v6}, Lb8/f;->D(FII)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v6, v1, Lk0/c;->b:[I

    .line 53
    .line 54
    aput v5, v6, v3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    .line 65
    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length v0, v2

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " vs "

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    array-length v0, v4

    .line 79
    const-string v1, ")"

    .line 80
    .line 81
    invoke-static {p2, v0, v1}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
