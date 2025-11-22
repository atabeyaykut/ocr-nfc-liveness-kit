.class public final Lg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/b$b;,
        Lg/b$a;
    }
.end annotation


# instance fields
.field public final a:Lg/l;

.field public final b:Lp/k;

.field public final c:Lkotlinx/coroutines/sync/f;


# direct methods
.method public constructor <init>(Lg/l;Lp/k;Lkotlinx/coroutines/sync/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/b;->a:Lg/l;

    iput-object p2, p0, Lg/b;->b:Lp/k;

    iput-object p3, p0, Lg/b;->c:Lkotlinx/coroutines/sync/f;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lg/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lg/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lg/b$c;

    .line 7
    .line 8
    iget v1, v0, Lg/b$c;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lg/b$c;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lg/b$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lg/b$c;-><init>(Lg/b;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lg/b$c;->c:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lg/b$c;->e:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lg/b$c;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lkotlinx/coroutines/sync/f;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object v2, v0, Lg/b$c;->b:Lkotlinx/coroutines/sync/f;

    .line 58
    .line 59
    iget-object v4, v0, Lg/b$c;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Lg/b;

    .line 62
    .line 63
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object p0, v0, Lg/b$c;->a:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v2, p0, Lg/b;->c:Lkotlinx/coroutines/sync/f;

    .line 73
    .line 74
    iput-object v2, v0, Lg/b$c;->b:Lkotlinx/coroutines/sync/f;

    .line 75
    .line 76
    iput v4, v0, Lg/b$c;->e:I

    .line 77
    .line 78
    invoke-interface {v2, v0}, Lkotlinx/coroutines/sync/f;->a(Lg/b$c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v1, :cond_4

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_4
    move-object v4, p0

    .line 86
    :goto_1
    :try_start_1
    new-instance p1, Lg/b$d;

    .line 87
    .line 88
    invoke-direct {p1, v4}, Lg/b$d;-><init>(Lg/b;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, v0, Lg/b$c;->a:Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    iput-object v4, v0, Lg/b$c;->b:Lkotlinx/coroutines/sync/f;

    .line 95
    .line 96
    iput v3, v0, Lg/b$c;->e:I

    .line 97
    .line 98
    sget-object v3, Lp9/g;->a:Lp9/g;

    .line 99
    .line 100
    new-instance v5, Lnc/x0;

    .line 101
    .line 102
    invoke-direct {v5, p1, v4}, Lnc/x0;-><init>(Lx9/a;Lp9/d;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v5, v0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    if-ne p1, v1, :cond_5

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_5
    move-object v0, v2

    .line 113
    :goto_2
    :try_start_2
    check-cast p1, Lg/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    invoke-interface {v0}, Lkotlinx/coroutines/sync/f;->release()V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :goto_3
    move-object v2, v0

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception p1

    .line 122
    :goto_4
    invoke-interface {v2}, Lkotlinx/coroutines/sync/f;->release()V

    .line 123
    .line 124
    .line 125
    throw p1
.end method
