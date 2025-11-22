.class public final Lmf/f;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lmf/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lmf/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmf/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/f$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lmf/e;Lmf/k;)V
    .locals 4

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "aboutPageWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lmf/f;->h:Lmf/k;

    .line 15
    .line 16
    new-instance p1, Lmf/g;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0}, Lmf/g;-><init>(Lmf/f;Lp9/d;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lr0/z;->c:Lnc/a0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-static {v1, v0, v2, p1, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lmf/h;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Lmf/h;-><init>(Lmf/f;Lp9/d;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
