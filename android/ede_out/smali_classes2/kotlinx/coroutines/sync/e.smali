.class public final Lkotlinx/coroutines/sync/e;
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
.field public final synthetic a:Lkotlinx/coroutines/sync/d;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/e;->a:Lkotlinx/coroutines/sync/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/sync/e;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/sync/e;->a:Lkotlinx/coroutines/sync/d;

    .line 4
    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/sync/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/d;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 11
    .line 12
    return-object p1
.end method
