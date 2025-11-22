.class public final Lp9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lp9/f;

.field public final b:Lp9/f$b;


# direct methods
.method public constructor <init>(Lp9/f$b;Lp9/f;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp9/c;->a:Lp9/f;

    iput-object p1, p0, Lp9/c;->b:Lp9/f$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-eq p0, p1, :cond_6

    .line 2
    .line 3
    instance-of v0, p1, Lp9/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    check-cast p1, Lp9/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    move-object v2, p1

    .line 15
    const/4 v3, 0x2

    .line 16
    :goto_0
    iget-object v2, v2, Lp9/c;->a:Lp9/f;

    .line 17
    .line 18
    instance-of v4, v2, Lp9/c;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Lp9/c;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move-object v2, v5

    .line 27
    :goto_1
    if-nez v2, :cond_5

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    :goto_2
    iget-object v2, v2, Lp9/c;->a:Lp9/f;

    .line 31
    .line 32
    instance-of v4, v2, Lp9/c;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    check-cast v2, Lp9/c;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    move-object v2, v5

    .line 40
    :goto_3
    if-nez v2, :cond_4

    .line 41
    .line 42
    if-ne v3, v0, :cond_7

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    :goto_4
    iget-object v2, v0, Lp9/c;->b:Lp9/f$b;

    .line 46
    .line 47
    invoke-interface {v2}, Lp9/f$b;->getKey()Lp9/f$c;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1, v3}, Lp9/c;->get(Lp9/f$c;)Lp9/f$b;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    goto :goto_5

    .line 63
    :cond_2
    iget-object v0, v0, Lp9/c;->a:Lp9/f;

    .line 64
    .line 65
    instance-of v2, v0, Lp9/c;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    check-cast v0, Lp9/c;

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_3
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Lp9/f$b;

    .line 78
    .line 79
    invoke-interface {v0}, Lp9/f$b;->getKey()Lp9/f$c;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Lp9/c;->get(Lp9/f$c;)Lp9/f$b;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    :goto_5
    if-eqz p1, :cond_7

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    :goto_6
    const/4 v1, 0x1

    .line 101
    :cond_7
    return v1
.end method

.method public final fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lx9/p<",
            "-TR;-",
            "Lp9/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp9/c;->a:Lp9/f;

    invoke-interface {v0, p1, p2}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lp9/c;->b:Lp9/f$b;

    invoke-interface {p2, p1, v0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lp9/f$c;)Lp9/f$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lp9/f$b;",
            ">(",
            "Lp9/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lp9/c;->b:Lp9/f$b;

    invoke-interface {v1, p1}, Lp9/f$b;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lp9/c;->a:Lp9/f;

    instance-of v1, v0, Lp9/c;

    if-eqz v1, :cond_1

    check-cast v0, Lp9/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lp9/c;->a:Lp9/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lp9/c;->b:Lp9/f$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final minusKey(Lp9/f$c;)Lp9/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "*>;)",
            "Lp9/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp9/c;->b:Lp9/f$b;

    invoke-interface {v0, p1}, Lp9/f$b;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object v1

    iget-object v2, p0, Lp9/c;->a:Lp9/f;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lp9/f;->minusKey(Lp9/f$c;)Lp9/f;

    move-result-object p1

    if-ne p1, v2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v1, Lp9/g;->a:Lp9/g;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lp9/c;

    invoke-direct {v1, v0, p1}, Lp9/c;-><init>(Lp9/f$b;Lp9/f;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final plus(Lp9/f;)Lp9/f;
    .locals 0

    invoke-static {p0, p1}, Lp9/f$a;->a(Lp9/f;Lp9/f;)Lp9/f;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    sget-object v2, Lp9/c$a;->a:Lp9/c$a;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lp9/c;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    const/16 v2, 0x5d

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
