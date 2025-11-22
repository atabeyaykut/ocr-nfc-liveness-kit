.class public final Lcom/google/android/gms/internal/measurement/r5;
.super Lcom/google/android/gms/internal/measurement/s5;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/v5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/v5;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r5;->c:Lcom/google/android/gms/internal/measurement/v5;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/s5;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/r5;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/v5;->m()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/r5;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/r5;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/r5;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
