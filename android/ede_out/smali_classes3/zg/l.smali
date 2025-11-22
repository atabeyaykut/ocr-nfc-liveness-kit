.class public final Lzg/l;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lzg/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lzg/u;

.field public final i:Lzg/f;

.field public final j:Lzg/h;

.field public final k:Lzg/c;

.field public final l:Lzg/b;

.field public final m:Lzg/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzg/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzg/l$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lzg/k;Lzg/u;Lzg/f;Lzg/h;Lzg/g;Lzg/c;Lzg/b;Lzg/j;)V
    .locals 1

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mobileAccidentApproveWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mobileAccidentApproveHostAccidentAddressWork"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mobileAccidentApproveMediaListWork"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "mobileAccidentApproveMediaDownloadWork"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p5, "mobileAccidentApproveConfirmationWork"

    .line 27
    .line 28
    invoke-static {p6, p5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p5, "mobileAccidentApproveConfirmationGuestWork"

    .line 32
    .line 33
    invoke-static {p7, p5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p5, "mobileAccidentApproveSaveReportWork"

    .line 37
    .line 38
    invoke-static {p8, p5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lzg/l;->h:Lzg/u;

    .line 45
    .line 46
    iput-object p3, p0, Lzg/l;->i:Lzg/f;

    .line 47
    .line 48
    iput-object p4, p0, Lzg/l;->j:Lzg/h;

    .line 49
    .line 50
    iput-object p6, p0, Lzg/l;->k:Lzg/c;

    .line 51
    .line 52
    iput-object p7, p0, Lzg/l;->l:Lzg/b;

    .line 53
    .line 54
    iput-object p8, p0, Lzg/l;->m:Lzg/j;

    .line 55
    .line 56
    new-instance p1, Lzg/s;

    .line 57
    .line 58
    const/4 p3, 0x0

    .line 59
    invoke-direct {p1, p0, p3}, Lzg/s;-><init>(Lzg/l;Lp9/d;)V

    .line 60
    .line 61
    .line 62
    iget-object p4, p0, Lr0/z;->c:Lnc/a0;

    .line 63
    .line 64
    const/4 p5, 0x0

    .line 65
    const/4 p6, 0x3

    .line 66
    invoke-static {p4, p3, p5, p1, p6}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lzg/t;

    .line 70
    .line 71
    invoke-direct {p1, p0, p3}, Lzg/t;-><init>(Lzg/l;Lp9/d;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p4, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    new-instance v0, Lzg/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzg/l$b;-><init>(Lzg/l;Lp9/d;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance v0, Lzg/l$c;

    invoke-direct {v0, p0, v1}, Lzg/l$c;-><init>(Lzg/l;Lp9/d;)V

    iget-object v1, p0, Lzg/l;->j:Lzg/h;

    invoke-static {v4, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lzg/l$d;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lzg/l$d;-><init>(Lzg/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp9/d;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object p3, p0, Lr0/z;->c:Lnc/a0;

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v6, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance p1, Lzg/l$e;

    invoke-direct {p1, p0, v0}, Lzg/l$e;-><init>(Lzg/l;Lp9/d;)V

    iget-object p2, p0, Lzg/l;->m:Lzg/j;

    invoke-static {p3, p2, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
