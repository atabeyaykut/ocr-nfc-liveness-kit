.class public final Lfh/d;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lfh/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lfh/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfh/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfh/d$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lfh/c;Lfh/h;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentDifferentVehicleWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lfh/d;->h:Lfh/h;

    return-void
.end method
