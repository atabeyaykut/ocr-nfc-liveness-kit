.class public final Lb3/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lb3/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb3/i;

    invoke-direct {v0}, Lb3/i;-><init>()V

    sput-object v0, Lb3/i$a;->a:Lb3/i;

    return-void
.end method
