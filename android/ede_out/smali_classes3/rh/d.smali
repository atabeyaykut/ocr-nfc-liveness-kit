.class public final Lrh/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lrh/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lrh/q;

.field public final i:Lrh/p;

.field public final j:Lrh/a;

.field public final k:Lrh/s;

.field public final l:Lrh/r;

.field public final m:Lzg/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrh/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrh/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lrh/c;Lrh/q;Lrh/p;Lrh/a;Lrh/s;Lrh/r;Lzg/j;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentInProgressReportWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentCompletedReportWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentCompletedReportDownloadWork"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentReportDetailsWork"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentMergedReportDetailsWork"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentApproveSaveReportWork"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lrh/d;->h:Lrh/q;

    iput-object p3, p0, Lrh/d;->i:Lrh/p;

    iput-object p4, p0, Lrh/d;->j:Lrh/a;

    iput-object p5, p0, Lrh/d;->k:Lrh/s;

    iput-object p6, p0, Lrh/d;->l:Lrh/r;

    iput-object p7, p0, Lrh/d;->m:Lzg/j;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    new-instance v0, Lrh/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrh/d$b;-><init>(Lrh/d;Lp9/d;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance v0, Lrh/d$c;

    invoke-direct {v0, p0, v1}, Lrh/d$c;-><init>(Lrh/d;Lp9/d;)V

    iget-object v1, p0, Lrh/d;->i:Lrh/p;

    invoke-static {v4, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
