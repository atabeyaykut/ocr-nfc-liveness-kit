.class public final Lnf/e;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lnf/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lnf/m;

.field public final i:Lrf/d;

.field public final j:Lrf/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnf/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnf/e$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lnf/d;Lnf/m;Lrf/d;Lrf/n;)V
    .locals 2

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "barcodeServicesWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "favoriteServiceWork"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "unFavoriteServiceWork"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lnf/e;->h:Lnf/m;

    .line 25
    .line 26
    iput-object p3, p0, Lnf/e;->i:Lrf/d;

    .line 27
    .line 28
    iput-object p4, p0, Lnf/e;->j:Lrf/n;

    .line 29
    .line 30
    new-instance p1, Lnf/h;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-direct {p1, p0, p3}, Lnf/h;-><init>(Lnf/e;Lp9/d;)V

    .line 34
    .line 35
    .line 36
    iget-object p4, p0, Lr0/z;->c:Lnc/a0;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-static {p4, p3, v0, p1, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 41
    .line 42
    .line 43
    new-instance p1, Lnf/i;

    .line 44
    .line 45
    invoke-direct {p1, p0, p3}, Lnf/i;-><init>(Lnf/e;Lp9/d;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p4, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
