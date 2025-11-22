.class public interface abstract Ln3/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a$c$c;,
        Ln3/a$c$b;,
        Ln3/a$c$a;
    }
.end annotation


# static fields
.field public static final c0:Ln3/a$c$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/a$c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/a$c$c;-><init>(I)V

    sput-object v0, Ln3/a$c;->c0:Ln3/a$c$c;

    return-void
.end method
