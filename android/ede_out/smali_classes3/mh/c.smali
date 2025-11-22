.class public final Lmh/c;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lmh/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lmh/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmh/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmh/c$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lmh/b;Lmh/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentQRScanWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Lmh/c;->h:Lmh/f;

    return-void
.end method
