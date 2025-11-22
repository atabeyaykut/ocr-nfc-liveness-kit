.class public final Ldh/f;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Ldh/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ldh/n;

.field public final i:Ldh/c;

.field public final j:Ldh/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldh/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldh/f$a;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Ldh/e;Ldh/n;Ldh/c;Ldh/d;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAccidentDriverWork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDriverWork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveVehicleWork"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    iput-object p2, p0, Ldh/f;->h:Ldh/n;

    iput-object p3, p0, Ldh/f;->i:Ldh/c;

    iput-object p4, p0, Ldh/f;->j:Ldh/d;

    return-void
.end method
