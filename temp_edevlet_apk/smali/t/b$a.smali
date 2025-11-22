.class public final Lt/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/d;Lp/h;)Lt/c;
    .locals 1

    new-instance v0, Lt/b;

    invoke-direct {v0, p1, p2}, Lt/b;-><init>(Lt/d;Lp/h;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lt/b$a;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lt/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
