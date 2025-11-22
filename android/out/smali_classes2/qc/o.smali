.class public final Lqc/o;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Ljava/lang/Integer;",
        "Lp9/f$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqc/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqc/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lqc/o;->a:Lqc/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Lp9/f$b;

    .line 8
    .line 9
    invoke-interface {p2}, Lp9/f$b;->getKey()Lp9/f$c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lqc/o;->a:Lqc/m;

    .line 14
    .line 15
    iget-object v1, v1, Lqc/m;->b:Lp9/f;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lnc/b1;->d0:I

    .line 22
    .line 23
    sget-object v2, Lnc/b1$b;->a:Lnc/b1$b;

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    if-eq p2, v1, :cond_0

    .line 28
    .line 29
    const/high16 p1, -0x80000000

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    check-cast v1, Lnc/b1;

    .line 40
    .line 41
    check-cast p2, Lnc/b1;

    .line 42
    .line 43
    :goto_1
    const/4 v0, 0x0

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    move-object p2, v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    if-ne p2, v1, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    instance-of v2, p2, Lkotlinx/coroutines/internal/r;

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    :goto_2
    if-ne p2, v1, :cond_4

    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_3
    return-object p1

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ", expected child of "

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_5
    check-cast p2, Lkotlinx/coroutines/internal/r;

    .line 99
    .line 100
    invoke-virtual {p2}, Lnc/g1;->R()Lnc/m;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-nez p2, :cond_6

    .line 105
    .line 106
    move-object p2, v0

    .line 107
    goto :goto_1

    .line 108
    :cond_6
    invoke-interface {p2}, Lnc/m;->getParent()Lnc/b1;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    goto :goto_1
.end method
