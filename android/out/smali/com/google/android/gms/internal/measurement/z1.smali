.class public final Lcom/google/android/gms/internal/measurement/z1;
.super Lcom/google/android/gms/internal/measurement/a1;
.source "SourceFile"


# instance fields
.field public final a:Lc5/b5;


# direct methods
.method public constructor <init>(Lc5/b5;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/a1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z1;->a:Lc5/b5;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->a:Lc5/b5;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final w(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->a:Lc5/b5;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lc5/b5;->a(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
