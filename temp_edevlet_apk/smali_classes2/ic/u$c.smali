.class public final Lic/u$c;
.super Lic/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lic/u$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/u$c;

    invoke-direct {v0}, Lic/u$c;-><init>()V

    sput-object v0, Lic/u$c;->c:Lic/u$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lic/u$c$a;->a:Lic/u$c$a;

    const-string v1, "Unit"

    invoke-direct {p0, v1, v0}, Lic/u;-><init>(Ljava/lang/String;Lx9/l;)V

    return-void
.end method
