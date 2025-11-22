.class public final Lkotlinx/coroutines/sync/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/g;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lkotlinx/coroutines/sync/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/g;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/g$a;->a:Lkotlinx/coroutines/sync/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/sync/g$a;->a:Lkotlinx/coroutines/sync/g;

    .line 4
    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/sync/g;->release()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 9
    .line 10
    return-object p1
.end method
