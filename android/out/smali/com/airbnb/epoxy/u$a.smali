.class public final Lcom/airbnb/epoxy/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/p$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/epoxy/u;->addWithDebugValidation(Lcom/airbnb/epoxy/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/epoxy/u;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/u;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/u$a;->a:Lcom/airbnb/epoxy/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/u$a;->a:Lcom/airbnb/epoxy/u;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/u;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/epoxy/u;->access$102(Lcom/airbnb/epoxy/u;I)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/epoxy/u;->access$002(Lcom/airbnb/epoxy/u;Z)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/u$a;->a:Lcom/airbnb/epoxy/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/airbnb/epoxy/u;->access$002(Lcom/airbnb/epoxy/u;Z)Z

    return-void
.end method
