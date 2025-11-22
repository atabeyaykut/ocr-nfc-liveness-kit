.class public final Lhh/g;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhh/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lhh/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lhh/h;

.field public final i:Lhh/c;

.field public final j:Lhh/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhh/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhh/g$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lhh/f;Lhh/h;Lhh/c;Lhh/a;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentInformationWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentInformationLocationWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentInformationDescriptionWork"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lhh/g;->h:Lhh/h;

    iput-object p3, p0, Lhh/g;->i:Lhh/c;

    iput-object p4, p0, Lhh/g;->j:Lhh/a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lhh/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lhh/g$b;-><init>(Lhh/g;Ljava/lang/String;Lp9/d;)V

    const/4 p1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v3, v1, v2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Lhh/g$c;

    invoke-direct {p1, p0, v1}, Lhh/g$c;-><init>(Lhh/g;Lp9/d;)V

    iget-object v0, p0, Lhh/g;->j:Lhh/a;

    invoke-static {v3, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lhh/g$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lhh/g$d;-><init>(Lhh/g;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object v2, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v2, v1, p2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Lhh/g$e;

    invoke-direct {p1, p0, v1}, Lhh/g$e;-><init>(Lhh/g;Lp9/d;)V

    iget-object p2, p0, Lhh/g;->i:Lhh/c;

    invoke-static {v2, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method

.method public final f(Lhh/i;I)V
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhh/g$f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lhh/g$f;-><init>(Lhh/g;Lhh/i;Lp9/d;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lr0/z;->c:Lnc/a0;

    .line 15
    .line 16
    invoke-static {v3, v1, v2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lhh/g$g;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2, v1}, Lhh/g$g;-><init>(Lhh/g;ILp9/d;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lhh/g;->h:Lhh/h;

    .line 25
    .line 26
    invoke-static {v3, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
