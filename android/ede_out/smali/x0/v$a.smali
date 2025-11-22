.class public final Lx0/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr1/a$b<",
        "Lx0/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lx0/v;

    invoke-direct {v0}, Lx0/v;-><init>()V

    return-object v0
.end method
