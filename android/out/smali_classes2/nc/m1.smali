.class public final Lnc/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/k0;
.implements Lnc/m;


# static fields
.field public static final a:Lnc/m1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/m1;

    invoke-direct {v0}, Lnc/m1;-><init>()V

    sput-object v0, Lnc/m1;->a:Lnc/m1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final getParent()Lnc/b1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
