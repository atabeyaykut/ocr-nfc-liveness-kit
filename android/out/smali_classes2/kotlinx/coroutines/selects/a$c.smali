.class public final Lkotlinx/coroutines/selects/a$c;
.super Lnc/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lkotlinx/coroutines/selects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/a<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/a$c;->e:Lkotlinx/coroutines/selects/a;

    invoke-direct {p0}, Lnc/d1;-><init>()V

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/selects/a$c;->e:Lkotlinx/coroutines/selects/a;

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnc/f1;->K()Lnc/g1;

    move-result-object v0

    invoke-virtual {v0}, Lnc/g1;->n()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/selects/a;->t(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/a$c;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
