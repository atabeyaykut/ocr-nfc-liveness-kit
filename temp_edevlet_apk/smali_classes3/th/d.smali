.class public final Lth/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lth/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lth/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lth/g;

.field public final i:Lth/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lth/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lth/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lth/c;Lth/g;Lth/a;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentOnboardingWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentOnboardingClarificationWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lth/d;->h:Lth/g;

    iput-object p3, p0, Lth/d;->i:Lth/a;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    new-instance v0, Lth/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lth/d$b;-><init>(Lth/d;Lp9/d;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lr0/z;->c:Lnc/a0;

    invoke-static {v4, v1, v3, v0, v2}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    new-instance v0, Lth/d$c;

    invoke-direct {v0, p0, v1}, Lth/d$c;-><init>(Lth/d;Lp9/d;)V

    iget-object v1, p0, Lth/d;->h:Lth/g;

    invoke-static {v4, v1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    return-void
.end method
