.class public final Lqg/i;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lqg/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lqg/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqg/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqg/i$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lqg/h;Lqg/l;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionCityListWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lqg/i;->h:Lqg/l;

    return-void
.end method
