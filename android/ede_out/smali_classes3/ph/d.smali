.class public final Lph/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lph/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lph/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lph/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lph/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lph/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lph/c;Lph/e;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentWaitingApprovalWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lph/d;->h:Lph/e;

    invoke-virtual {p0}, Lph/d;->d()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    new-instance v0, Lph/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lph/d$b;-><init>(Lph/d;Lp9/d;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance v0, Lph/d$c;

    invoke-direct {v0, p0, v1}, Lph/d$c;-><init>(Lph/d;Lp9/d;)V

    iget-object v1, p0, Lph/d;->h:Lph/e;

    invoke-static {v4, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
