.class public final Lw5/k;
.super Lw5/l;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lw5/l;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final d(I[B)Lw5/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Lw5/i;

    invoke-direct {v0, p2, p1}, Lw5/i;-><init>([BI)V

    return-object v0
.end method
