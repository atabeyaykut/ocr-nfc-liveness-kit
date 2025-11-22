.class public final Lkotlinx/coroutines/internal/n;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Ljava/lang/Object;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final synthetic c:Lp9/f;


# direct methods
.method public constructor <init>(Lx9/l;Ljava/lang/Object;Lp9/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "Ljava/lang/Object;",
            "Ll9/m;",
            ">;",
            "Ljava/lang/Object;",
            "Lp9/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->a:Lx9/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/n;->c:Lp9/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->a:Lx9/l;

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lc5/y;->e(Lx9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/a0;)Lkotlinx/coroutines/internal/a0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->c:Lp9/f;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lc5/v;->u(Lp9/f;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 21
    .line 22
    return-object p1
.end method
