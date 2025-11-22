.class public final Ly0/h$b;
.super Lj0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj0/n;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj0/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ly0/k;
    .locals 1

    new-instance v0, Ly0/h$a;

    invoke-direct {v0, p0}, Ly0/h$a;-><init>(Ly0/h$b;)V

    return-object v0
.end method
