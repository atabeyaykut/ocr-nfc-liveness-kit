.class public final Lpc/c;
.super Lkotlinx/coroutines/internal/j$b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lpc/b;


# direct methods
.method public constructor <init>(Lpc/z;Lpc/b;)V
    .locals 0

    iput-object p2, p0, Lpc/c;->d:Lpc/b;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/j$b;-><init>(Lkotlinx/coroutines/internal/j;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/j;

    .line 2
    .line 3
    iget-object p1, p0, Lpc/c;->d:Lpc/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lpc/b;->j()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lb0/a;->b:Lkotlinx/coroutines/internal/u;

    .line 14
    .line 15
    :goto_0
    return-object p1
.end method
