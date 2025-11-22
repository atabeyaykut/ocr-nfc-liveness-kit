.class public final Lkotlinx/coroutines/sync/d$a$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/d$a;->K()Z
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
.field public final synthetic a:Lkotlinx/coroutines/sync/d;

.field public final synthetic b:Lkotlinx/coroutines/sync/d$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/d;Lkotlinx/coroutines/sync/d$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/d$a$a;->a:Lkotlinx/coroutines/sync/d;

    iput-object p2, p0, Lkotlinx/coroutines/sync/d$a$a;->b:Lkotlinx/coroutines/sync/d$a;

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
    iget-object p1, p0, Lkotlinx/coroutines/sync/d$a$a;->b:Lkotlinx/coroutines/sync/d$a;

    .line 4
    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/sync/d$b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/sync/d$a$a;->a:Lkotlinx/coroutines/sync/d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/sync/d;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    return-object p1
.end method
