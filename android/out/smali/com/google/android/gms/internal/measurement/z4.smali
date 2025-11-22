.class public final Lcom/google/android/gms/internal/measurement/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z4;->a:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/z4;->b:Z

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/v4;

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/gms/internal/measurement/v4;-><init>(Lcom/google/android/gms/internal/measurement/z4;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/y4;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Lcom/google/android/gms/internal/measurement/z4;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/w4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w4;-><init>(Lcom/google/android/gms/internal/measurement/z4;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
