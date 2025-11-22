.class public final Ltb/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Ltb/d$a;

.field public static final b:Ltb/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltb/d$a;

    invoke-direct {v0}, Ltb/d$a;-><init>()V

    sput-object v0, Ltb/d$a;->a:Ltb/d$a;

    new-instance v0, Ltb/a;

    invoke-direct {v0}, Ltb/a;-><init>()V

    sput-object v0, Ltb/d$a;->b:Ltb/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
