.class public final Lof/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lof/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lof/b;

    invoke-direct {v0}, Lof/b;-><init>()V

    sput-object v0, Lof/b$a;->a:Lof/b;

    return-void
.end method
