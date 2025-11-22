.class public abstract Lqc/g;
.super Lqc/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lp9/f;ILpc/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "+TS;>;",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lqc/e;-><init>(Lp9/f;ILpc/f;)V

    iput-object p1, p0, Lqc/g;->d:Lkotlinx/coroutines/flow/f;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lqc/e;->b:I

    .line 4
    .line 5
    const/4 v2, -0x3

    .line 6
    if-ne v1, v2, :cond_4

    .line 7
    .line 8
    invoke-interface {p2}, Lp9/d;->getContext()Lp9/f;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lqc/e;->a:Lp9/f;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lqc/g;->g(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-ne p1, v0, :cond_5

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    sget v3, Lp9/e;->e0:I

    .line 32
    .line 33
    sget-object v3, Lp9/e$a;->a:Lp9/e$a;

    .line 34
    .line 35
    invoke-interface {v2, v3}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v1, v3}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v4, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-interface {p2}, Lp9/d;->getContext()Lp9/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    instance-of v3, p1, Lqc/p;

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    instance-of v3, p1, Lqc/l;

    .line 60
    .line 61
    :goto_0
    if-eqz v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v3, Lqc/r;

    .line 65
    .line 66
    invoke-direct {v3, p1, v1}, Lqc/r;-><init>(Lkotlinx/coroutines/flow/g;Lp9/f;)V

    .line 67
    .line 68
    .line 69
    move-object p1, v3

    .line 70
    :goto_1
    new-instance v1, Lqc/f;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct {v1, p0, v3}, Lqc/f;-><init>(Lqc/g;Lp9/d;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lkotlinx/coroutines/internal/w;->b(Lp9/f;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, p1, v3, v1, p2}, La6/a;->H(Lp9/f;Ljava/lang/Object;Ljava/lang/Object;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v0, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 88
    .line 89
    :goto_2
    if-ne p1, v0, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-super {p0, p1, p2}, Lqc/e;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 100
    .line 101
    :goto_3
    return-object p1
.end method

.method public final c(Lpc/r;Lp9/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/r<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lqc/p;

    invoke-direct {v0, p1}, Lqc/p;-><init>(Lpc/y;)V

    invoke-virtual {p0, v0, p2}, Lqc/g;->g(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    :goto_0
    return-object p1
.end method

.method public abstract g(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqc/g;->d:Lkotlinx/coroutines/flow/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lqc/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
