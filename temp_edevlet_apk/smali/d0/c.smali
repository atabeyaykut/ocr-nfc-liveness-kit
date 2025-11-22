.class public final Ld0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static a:I

.field public static volatile b:Lm0/f;

.field public static volatile c:Lm0/e;


# direct methods
.method public static a()V
    .locals 1

    sget v0, Ld0/c;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Ld0/c;->a:I

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lm0/e;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Ld0/c;->c:Lm0/e;

    if-nez v0, :cond_1

    const-class v1, Lm0/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld0/c;->c:Lm0/e;

    if-nez v0, :cond_0

    new-instance v0, Lm0/e;

    new-instance v2, Ld0/c$a;

    invoke-direct {v2, p0}, Ld0/c$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lm0/e;-><init>(Ld0/c$a;)V

    sput-object v0, Ld0/c;->c:Lm0/e;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method
