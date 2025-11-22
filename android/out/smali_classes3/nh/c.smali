.class public final Lnh/c;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnh/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lnh/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lnh/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnh/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnh/c$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lnh/b;Lnh/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentMatchedReportWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lnh/c;->h:Lnh/f;

    return-void
.end method
