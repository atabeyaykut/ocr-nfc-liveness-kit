.class public final Llh/e;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Llh/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Llh/j;

.field public final i:Llh/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llh/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llh/e$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Llh/d;Llh/j;Llh/a;)V
    .locals 3

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mobileAccidentGenerateQRWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mobileAccidentCheckQRControlWork"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Llh/e;->h:Llh/j;

    .line 20
    .line 21
    iput-object p3, p0, Llh/e;->i:Llh/a;

    .line 22
    .line 23
    new-instance p1, Llh/h;

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-direct {p1, p0, p3}, Llh/h;-><init>(Llh/e;Lp9/d;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lr0/z;->c:Lnc/a0;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-static {v0, p3, v1, p1, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 34
    .line 35
    .line 36
    new-instance p1, Llh/i;

    .line 37
    .line 38
    invoke-direct {p1, p0, p3}, Llh/i;-><init>(Llh/e;Lp9/d;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
