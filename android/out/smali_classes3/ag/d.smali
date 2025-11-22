.class public final Lag/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lag/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lag/i;

.field public final i:Lbg/c;

.field public final j:Lbg/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lag/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lag/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lag/c;Lag/i;Lbg/c;Lbg/d;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionDetailWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteServiceWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unFavoriteServiceWork"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lag/d;->h:Lag/i;

    iput-object p3, p0, Lag/d;->i:Lbg/c;

    iput-object p4, p0, Lag/d;->j:Lbg/d;

    return-void
.end method


# virtual methods
.method public final d(IILjava/lang/Integer;)V
    .locals 7

    new-instance v6, Lag/d$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lag/d$b;-><init>(Lag/d;IILjava/lang/Integer;Lp9/d;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object p3, p0, Lr0/z;->c:Lnc/a0;

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v6, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Lag/d$c;

    invoke-direct {p1, p0, v0}, Lag/d$c;-><init>(Lag/d;Lp9/d;)V

    iget-object p2, p0, Lag/d;->h:Lag/i;

    invoke-static {p3, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
