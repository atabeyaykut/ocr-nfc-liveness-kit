.class public final Lcom/airbnb/epoxy/e0;
.super Lcom/airbnb/epoxy/z;
.source "SourceFile"


# static fields
.field public static final b:Lcom/airbnb/epoxy/e0;

.field public static final c:Lcom/airbnb/epoxy/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/airbnb/epoxy/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/e0;-><init>(Z)V

    sput-object v0, Lcom/airbnb/epoxy/e0;->b:Lcom/airbnb/epoxy/e0;

    new-instance v0, Lcom/airbnb/epoxy/e0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/e0;-><init>(Z)V

    sput-object v0, Lcom/airbnb/epoxy/e0;->c:Lcom/airbnb/epoxy/e0;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/airbnb/epoxy/o;->b:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/airbnb/epoxy/o;->a:Landroid/os/Handler;

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/z;-><init>(Landroid/os/Handler;)V

    return-void
.end method
