.class public final Lnc/g1$b;
.super Lnc/f1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lnc/g1;

.field public final f:Lnc/g1$c;

.field public final g:Lnc/n;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnc/g1;Lnc/g1$c;Lnc/n;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lnc/f1;-><init>()V

    iput-object p1, p0, Lnc/g1$b;->e:Lnc/g1;

    iput-object p2, p0, Lnc/g1$b;->f:Lnc/g1$c;

    iput-object p3, p0, Lnc/g1$b;->g:Lnc/n;

    iput-object p4, p0, Lnc/g1$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object p1, Lnc/g1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    iget-object p1, p0, Lnc/g1$b;->e:Lnc/g1;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnc/g1$b;->g:Lnc/n;

    .line 9
    .line 10
    invoke-static {v0}, Lnc/g1;->Z(Lkotlinx/coroutines/internal/j;)Lnc/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lnc/g1$b;->f:Lnc/g1$c;

    .line 15
    .line 16
    iget-object v2, p0, Lnc/g1$b;->h:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0, v2}, Lnc/g1;->h0(Lnc/g1$c;Lnc/n;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v1, v2}, Lnc/g1;->N(Lnc/g1$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lnc/g1;->F(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnc/g1$b;->J(Ljava/lang/Throwable;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
